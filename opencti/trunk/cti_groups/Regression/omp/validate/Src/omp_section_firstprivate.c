
#include <stdio.h>
#include "omp_testsuite.h"


int test_omp_section_firstprivate(FILE * logFile){
	
	    int sum;
	    int sum0;
	
	int known_sum;

	sum0 = 11;
	sum = 7;
#pragma omp parallel
	{

#pragma omp  sections firstprivate(sum0)
		{
#pragma omp section 
			{
#pragma omp critical
				{
					sum = sum + sum0;
				} /*end of critical */
			}    
#pragma omp section
			{
#pragma omp critical
				{
					sum = sum + sum0;
				} /*end of critical */
			}
#pragma omp section
			{
#pragma omp critical
				{
					sum = sum + sum0;
				} /*end of critical */
			}               
		} /*end of sections*/

	} /* end of parallel */
	known_sum = 11 * 3 + 7;
	return (known_sum == sum); 
} /* end of check_section_firstprivate*/
int main()
{
	int i;			/* Loop index */
	int result;		/* return value of the program */
	int failed=0; 		/* Number of failed tests */
	int success=0;		/* number of succeeded tests */
	static FILE * logFile;	/* pointer onto the logfile */
	static const char * logFileName = "ctest_omp_section_firstprivate.log";	/* name of the logfile */


	/* Open a new Logfile or overwrite the existing one. */
	logFile = fopen(logFileName,"w+");

	printf("######## OpenMP Validation Suite V %s ######\n", OMPTS_VERSION );
	printf("## Repetitions: %3d                       ####\n",REPETITIONS);
	printf("## Loop Count : %6d                    ####\n",LOOPCOUNT);
	printf("##############################################\n");
	printf("Testing omp firstprivate\n\n");

	fprintf(logFile,"######## OpenMP Validation Suite V %s ######\n", OMPTS_VERSION );
	fprintf(logFile,"## Repetitions: %3d                       ####\n",REPETITIONS);
	fprintf(logFile,"## Loop Count : %6d                    ####\n",LOOPCOUNT);
	fprintf(logFile,"##############################################\n");
	fprintf(logFile,"Testing omp firstprivate\n\n");

	for ( i = 0; i < REPETITIONS; i++ ) {
		fprintf (logFile, "\n\n%d. run of test_omp_section_firstprivate out of %d\n\n",i+1,REPETITIONS);
		if(test_omp_section_firstprivate(logFile)){
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
