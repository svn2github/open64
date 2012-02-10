
#include <stdio.h>

#include "omp_testsuite.h"
#include "omp_my_sleep.h"

int test_omp_sections_nowait (FILE * logFile)
{
	
		int result;
		int count;
	
	int j;

	result = 0;
	count = 0;

#pragma omp parallel 
	{
	
	int rank;

	rank = omp_get_thread_num ();
	
#pragma omp sections nowait
		{
#pragma omp section
			{
				fprintf (logFile, "Thread nr %d enters first section and gets sleeping.\n", rank);
				my_sleep(SLEEPTIME);
				count = 1;
				fprintf (logFile, "Thread nr %d woke up an set count to 1.\n", rank);
#pragma omp flush(count)
			}
#pragma omp section
			{
				fprintf (logFile, "Thread nr %d executed work in the first section.\n", rank);
			}
		}
/* Begin of second sections environment */
#pragma omp sections
		{
#pragma omp section
			{
				fprintf (logFile, "Thread nr %d executed work in the second section.\n", rank);
			}
#pragma omp section
			{
				fprintf (logFile, "Thread nr %d executed work in the second section and controls the value of count\n", rank);
				if (count == 0)
					result = 1;
				fprintf (logFile, "cout was %d", count);
			}
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
	static const char * logFileName = "ctest_omp_sections_nowait.log";	/* name of the logfile */


	/* Open a new Logfile or overwrite the existing one. */
	logFile = fopen(logFileName,"w+");

	printf("######## OpenMP Validation Suite V %s ######\n", OMPTS_VERSION );
	printf("## Repetitions: %3d                       ####\n",REPETITIONS);
	printf("## Loop Count : %6d                    ####\n",LOOPCOUNT);
	printf("##############################################\n");
	printf("Testing omp parallel sections nowait\n\n");

	fprintf(logFile,"######## OpenMP Validation Suite V %s ######\n", OMPTS_VERSION );
	fprintf(logFile,"## Repetitions: %3d                       ####\n",REPETITIONS);
	fprintf(logFile,"## Loop Count : %6d                    ####\n",LOOPCOUNT);
	fprintf(logFile,"##############################################\n");
	fprintf(logFile,"Testing omp parallel sections nowait\n\n");

	for ( i = 0; i < REPETITIONS; i++ ) {
		fprintf (logFile, "\n\n%d. run of test_omp_sections_nowait out of %d\n\n",i+1,REPETITIONS);
		if(test_omp_sections_nowait(logFile)){
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
