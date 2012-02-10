
/* Test for guided scheduling
 * Ensure threads get chunks interleavely first
 * Then judge the chunk sizes are decreasing to a stable value
 * Modified by Chunhua Liao
 * For example, 100 iteration on 2 threads, chunksize 7
 * one line for each dispatch, 0/1 means thread id
 * 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  24
 * 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1              18
 * 0 0 0 0 0 0 0 0 0 0 0 0 0 0                      14
 * 1 1 1 1 1 1 1 1 1 1                              10
 * 0 0 0 0 0 0 0 0                                   8
 * 1 1 1 1 1 1 1                                     7
 * 0 0 0 0 0 0 0                                     7
 * 1 1 1 1 1 1 1                                     7
 * 0 0 0 0 0                                         5
*/
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

#include "omp_testsuite.h"
#include "omp_my_sleep.h"

#define NUMBER_OF_THREADS 10
#define CFSMAX_SIZE 1000
#define MAX_TIME  0.005

#ifdef SLEEPTIME
#undef SLEEPTIME
#define SLEEPTIME 0.0001
#endif

int test_omp_for_schedule_guided (FILE * logFile)
{
    
	int * tids;
	int * chunksizes;
	int notout;
	int maxiter;
    

    int threads;
    int i;
    int result;

    tids = (int *) malloc (sizeof (int) * (CFSMAX_SIZE + 1));
	maxiter = 0;
    result = 1;
    notout = 1;

/* Testing if enought threads are available for this check. */
#pragma omp parallel
	{
#pragma omp single
	  {
		threads = omp_get_num_threads ();
	  } /* end of single */
	} /* end of parallel */

	if (threads < 2) {
	  printf ("This test only works with at least two threads .\n");
	  fprintf (logFile, "This test only works with at least two threads. Available were only %d thread(s).\n", threads);
	  return (0);
	} /* end if */


    /* Now the real parallel work:  
     *
	 * Each thread will start immediately with the first chunk.
     */
#pragma omp parallel shared(tids,maxiter)
    {	/* begin of parallel */
      
      double count;
      int tid;
      int j;

      tid = omp_get_thread_num ();

#pragma omp for nowait schedule(guided)
      for(j = 0; j < CFSMAX_SIZE; ++j)
      {
	count = 0.;
#pragma omp flush(maxiter)
	if (j > maxiter)
	{
#pragma omp critical
	  {
	    maxiter = j;
	  }	/* end of critical */ 
	}
	/*printf ("thread %d sleeping\n", tid);*/
#pragma omp flush(maxiter,notout)	
	while (notout && (count < MAX_TIME) && (maxiter == j))
	{
#pragma omp flush(maxiter,notout)
	  my_sleep (SLEEPTIME);
	  count += SLEEPTIME;
#ifdef VERBOSE
	  printf(".");
#endif
	}
#ifdef VERBOSE
	if (count > 0.) printf(" waited %lf s\n", count);
#endif
	/*printf ("thread %d awake\n", tid);*/
	tids[j] = tid;
#ifdef VERBOSE
	printf("%d finished by %d\n",j,tid);
#endif
      }	/* end of for */

      notout = 0;
#pragma omp flush(maxiter,notout)
      
    }	/* end of parallel */

/*******************************************************
 * evaluation of the values                            *
 *******************************************************/
	{
	  int determined_chunksize = 1;
	  int last_threadnr = tids[0];
	  int global_chunknr = 0;
	  int local_chunknr[NUMBER_OF_THREADS];
	  int openwork = CFSMAX_SIZE;
	  int expected_chunk_size;
	  double c = 1;

	  for (i = 0; i < NUMBER_OF_THREADS; i++)
		local_chunknr[i] = 0;

	  tids[CFSMAX_SIZE] = -1;

      /*
	   * determine the number of global chunks
	   */
	  /*fprintf(logFile,"# global_chunknr thread local_chunknr chunksize\n"); */
	  for(i = 1; i <= CFSMAX_SIZE; ++i)
	  {
		if (last_threadnr==tids[i]) { 
		  determined_chunksize++; 
		}
		else
		{
		  /* fprintf (logFile, "%d\t%d\t%d\t%d\n", global_chunknr,last_threadnr, local_chunknr[last_threadnr], m); */
		  global_chunknr++;
		  local_chunknr[last_threadnr]++;
		  last_threadnr = tids[i];
		  determined_chunksize = 1;
		}
	  }
	  /* now allocate the memory for saving the sizes of the global chunks */
	  chunksizes = (int*)malloc(global_chunknr * sizeof(int));

      /*
	   * Evaluate the sizes of the global chunks
	   */
	  global_chunknr = 0;
	  determined_chunksize = 1;
	  last_threadnr = tids[0];	    
	  for (i = 1; i <= CFSMAX_SIZE; ++i)
	  {
		/* If the threadnumber was the same as before increase the detected chunksize for this chunk
		 * otherwise set the detected chunksize again to one and save the number of the next thread in last_threadnr. 
		 */
		if (last_threadnr == tids[i]) { 
		  determined_chunksize++; 
		}
		else {
		  chunksizes[global_chunknr] = determined_chunksize;
		  global_chunknr++;
		  local_chunknr[last_threadnr]++;
		  last_threadnr = tids[i];
		  determined_chunksize = 1;
		}
	  }

#ifdef VERBOSE
	  fprintf (logFile, "found\texpected\tconstant\n");
#endif

	  /* identify the constant c for the exponential decrease of the chunksize */
	  expected_chunk_size = openwork / threads;
	  c = (double) chunksizes[0] / expected_chunk_size;
	  
	  for (i = 0; i < global_chunknr; i++)
	  {
		/* calculate the new expected chunksize */
		if (expected_chunk_size > 1) 
		  expected_chunk_size = c * openwork / threads;
		
#ifdef VERBOSE
		fprintf (logFile, "%8d\t%8d\t%lf\n", chunksizes[i], expected_chunk_size, c * chunksizes[i]/expected_chunk_size);
#endif
		
		/* check if chunksize is inside the rounding errors */
		if (abs (chunksizes[i] - expected_chunk_size) >= 2) {
		  result = 0;
#ifndef VERBOSE
		  fprintf (logFile, "Chunksize differed from expected value: %d instead of %d\n", chunksizes[i], expected_chunk_size);
		  return 0;
#endif
		} /* end if */

#ifndef VERBOSE
		if (expected_chunk_size - chunksizes[i] < 0 )
		  fprintf (logFile, "Chunksize did not decrease: %d instead of %d\n", chunksizes[i],expected_chunk_size);
#endif

		/* calculating the remaining ammount of work */
		openwork -= chunksizes[i];
	  }	
	}
    return result;
}
int main()
{
	int i;			/* Loop index */
	int result;		/* return value of the program */
	int failed=0; 		/* Number of failed tests */
	int success=0;		/* number of succeeded tests */
	static FILE * logFile;	/* pointer onto the logfile */
	static const char * logFileName = "ctest_omp_for_schedule_guided.log";	/* name of the logfile */


	/* Open a new Logfile or overwrite the existing one. */
	logFile = fopen(logFileName,"w+");

	printf("######## OpenMP Validation Suite V %s ######\n", OMPTS_VERSION );
	printf("## Repetitions: %3d                       ####\n",REPETITIONS);
	printf("## Loop Count : %6d                    ####\n",LOOPCOUNT);
	printf("##############################################\n");
	printf("Testing omp for schedule(guided)\n\n");

	fprintf(logFile,"######## OpenMP Validation Suite V %s ######\n", OMPTS_VERSION );
	fprintf(logFile,"## Repetitions: %3d                       ####\n",REPETITIONS);
	fprintf(logFile,"## Loop Count : %6d                    ####\n",LOOPCOUNT);
	fprintf(logFile,"##############################################\n");
	fprintf(logFile,"Testing omp for schedule(guided)\n\n");

	for ( i = 0; i < REPETITIONS; i++ ) {
		fprintf (logFile, "\n\n%d. run of test_omp_for_schedule_guided out of %d\n\n",i+1,REPETITIONS);
		if(test_omp_for_schedule_guided(logFile)){
			fprintf(logFile,"Test succesfull.\n");
			success++;
		}
		else {
			fprintf(logFile,"Error: Test failed.\n");
			printf("Error: Test failed.\n");
			failed++;
		}
	}

    if(failed==0){
		fprintf(logFile,"\nDirectiv worked without errors.\n");
		printf("Directiv worked without errors.\n");
		result=0;
	}
	else{
		fprintf(logFile,"\nDirective failed the test %i times out of %i. %i were successful\n",failed,REPETITIONS,success);
		printf("Directive failed the test %i times out of %i.\n%i test(s) were successful\n",failed,REPETITIONS,success);
		result = (int) (((double) failed / (double) REPETITIONS ) * 100 );
	}
	printf ("Result: %i\n", result);
	return result;
}
