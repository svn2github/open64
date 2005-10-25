/*
 * Copyright (c) 2000, Intel Corporation
 * All rights reserved.
 *
 * WARRANTY DISCLAIMER
 *
 * THESE MATERIALS ARE PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL INTEL OR ITS 
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THESE
 * MATERIALS, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * Intel Corporation is the author of the Materials, and requests that all
 * problem reports or change requests be submitted to it directly at
 * http://developer.intel.com/opensource.
 */


/* static char sccs_id[] = "%W%  %G%  %U%"; */

#include <stdio.h>

//#include <conio.h>

#include <stdlib.h>

#include <string.h>
#include "kapi.h"

#include "kapi_debug.h"

#include "kapi_ia64.h"
#include "kapi_save_source_ia64.h"
//#include "kapi_internal.h"
//#include "kmapi.h"

static void  Test_bv128Rtns();
static void  Test_bv64Rtns();
static void  Test_bv32Rtns();
extern int trying123;
extern int ttt;
void *pKmapiInfo;
//int trying123;

#if 0
void dump_instruction_fus(FILE *fp, void *pknobs)

{

	int num_of_insts,iid,dummy;
	kapi_fu_t fu;
	knobs_t *pIknobs;

	typedef struct {
		int x;
		int *ix;
		char *gogo;
		int nx[2];
	} xtest;
	typedef struct {
		int nxs;
		xtest *pxtest;
		xtest *ppx[2];
		char *dx;
	} ytest;

	static int yy[]={5,5};


	static xtest xx[]= {{2,yy,"gogo",{0,0}},
						{2,yy,"gogo",{0,0}}};
	static xtest zz[2]= {{2,yy,"gogo",{0,0}},
						{2,yy,"gogo",{0,0}}};

	static ytest ylast={2,
						&(zz[1]),
						{xx,zz},
						"gugunza",
	};

	char *str;
	char *cIdx;
	char buffer[100];
	int idx;
	int iVal;
	FILE *fpTab=fopen("tryTab.c","w");
	int expressions=KAPI_EnumCardinality(pknobs,"expressions");
	int i0,i1,m0,m1;
	i0=KAPI_EnumIndex(pknobs,"port_t","portI0");
	i1=KAPI_EnumIndex(pknobs,"port_t","portI1");
	m0=KAPI_EnumIndex(pknobs,"port_t","portM0");
	m1=KAPI_EnumIndex(pknobs,"port_t","portM1");
	dummy=KAPI_cportMask4ut(pknobs,0,kapi_utI);
	iVal=(1 << i0) | (1 << i1);
/*	dummy=KAPI_portMask4ut(pknobs,0,kapi_utI); */
	dummy=KAPI_cportMask4ut(pknobs,0,kapi_utM);
	iVal=(1 << m0) | (1 << m1);
	dummy=KAPI_cportMask4ut(pknobs,0,kapi_utF);
	dummy=KAPI_cportMask4ut(pknobs,0,kapi_utB);
	
	
	dummy=KAPI_fuCount(pknobs);
	num_of_insts=KAPI_iidCount(pknobs);
	_strset(buffer,0);
	str="#include \"tryhead.h\"\n\ninst_info_tab_t infoTab[] = {\n";
	fwrite(str,sizeof(char),strlen(str),fp);
	for (iid=0;iid<num_of_insts;iid++)
	{
		_strset(buffer,0);
		str=KAPI_iid2uniqueName(pknobs,iid,dummy);
		fwrite(str,sizeof(char),strlen(str),fp);
		fwrite(",",sizeof(char),1,fp);
		fu=KAPI_iid2fu(pknobs,iid,dummy);
		strcat(buffer,"/* ");
		strcat(buffer,KAPI_fu2fuName(pknobs,fu,dummy));
		strcat(buffer," */");
		fwrite(buffer,sizeof(char),strlen(buffer),fp);
		*buffer='\0';
		_itoa(fu,buffer,10);
		fwrite(buffer,sizeof(char),strlen(buffer),fp);
		fwrite(",",sizeof(char),1,fp);
		fwrite("\n",sizeof(char),1,fp);
	}
	_strset(buffer,0);
	str="0,0\n};\n/*";
	fwrite(str,sizeof(char),strlen(str),fp);
	
	for (idx=0;idx<expressions;idx++)
	{
		*buffer='\0';
		cIdx=KAPI_EnumName(pknobs,idx,"expressions");
		iVal=KAPI_GetIntegerVariable(pknobs,"expr",idx);
		sprintf(buffer,"[%s] = %d\n",cIdx,iVal);
		fwrite(buffer,sizeof(char),strlen(buffer),fp);
	}
	_strset(buffer,0);
	str="*/\n\n";
	fwrite(str,sizeof(char),strlen(str),fp);
	printf("finished Try\n");
	fclose(fp);
	fp=fopen("T1.c","w");
	KAPI_save_as_header_all_IA64_info( fp, pknobs , "trying123");
	printf("finished T1\n");
	fclose(fp);
	fclose(fpTab);
	//KAPI_fEnableIA64call_from_header(&pknobs,&trying123,0);
	fp=fopen("T2.c","w");
	KAPI_save_as_header_all_IA64_info( fp, pknobs , "trying123");
	fclose(fp);
	printf("finished T2\n");

//	pKmapiInfo=KMAPI_initialize(pknobs);
	if (pKmapiInfo!=NULL)
		printf("Kmapi initialized!\n");
	else 
	{
		printf("Kmapi Initialization Failed!\n");
	}
	//_getch();
}
#endif

int main( int argc, char *argv[] )
{
   void *pvoid1;
   FILE *fp1=NULL,*fp2=NULL;
   FILE *outp=NULL;
   FILE *Ferr=NULL;

   char *toolname;
   bv_t  *bv1;
   bv32_t bv2;
   kapi_syl_t mpsyl[3];
   
   papair_t *bypasses;
   int numpl;

   if (( (toolname=strrchr(argv[ 0],'\\')) ==NULL) && 
	   ( (toolname=strrchr(argv[ 0],'/')) ==NULL) )
	   toolname=argv[ 0];

 

	   
   if ( argc < 2 ) {
      printf("%s knobs toolname [delta knobs]\n", toolname );
      exit(1);
   } 

   if ( 5 <= argc )
	   freopen(argv[4],"w",stderr);
   if ( 4 <= argc ) /*delta file exists*/
	fp2 = fopen( argv[ 3 ], "r" );
   fp1 = fopen( argv[ 1 ], "r" );
   outp = fopen( "try.c", "w" );
   if ((fp1==NULL) && (fp2==NULL)) 
   {
	   printf("Could not open knobsfiles!\n");
	   return 2;
   }
   pvoid1 = KAPI_Initialize( fp2, fp1, argv[ 2 ]);
   fclose( fp1 );
   if (pvoid1!=NULL)
	   pvoid1=KAPI_ia64_Initialize(pvoid1);

   if (NULL!=fp2) fclose( fp2 );
   if ((5 <=argc ) && (NULL!=Ferr)) fclose( Ferr );

   if ( pvoid1 ) {
      int fuLD,tmp;
/*
      KDebug_DumpMachineDescription( stdout,  pvoid1, 0 );

      KDebug_DumpInterClusterBypass( stdout, pvoid1 );
      KDebug_DumpClusterDistances( stdout, pvoid1 );
      KDebug_DumpIntraClusterBypass( stdout, pvoid1 );
      KDebug_DumpLatencies( stdout, pvoid1 );
      KDebug_DumpTotalLatency( stdout, pvoid1 );
*/

/*Test for function in KAPI*/
      int iOpCount,i=0,j;	
      char OpName[50];
      iOpCount = KAPI_iidCount( pvoid1 ); 
      printf("function KAPI_iidCount return %d" , iOpCount); 
/*      for (i=1;i<=iOpCount-1;i++)
     {
          printf("TOP_%s \n", KAPI_iid2mnemonic(pvoid1,i,0));
      }*/
   /*   for (i=0; i<KAPI_count4attribute( pvoid1,"INTRACLUSTER"); i++ ) 
      {
          char *string;
          string = KAPI_attribute4index( pvoid1,"INTRACLUSTER", i );
          printf("%s\n",string);
      }*/
      fuLD = KAPI_EnumIndex( pvoid1, "fu_t", "fuLD" );
      printf( "function %d has %d ports\n", fuLD,
             KAPI_cportCount4fu( pvoid1, -1, fuLD));
      tmp = KAPI_IntraClusterBypass(pvoid1,0 ,0,0,0,0, 7,0,0,0);
      printf("%d",KAPI_EnumCardinality( pvoid1, "bid_t"));
      for (i=0; i<KAPI_EnumCardinality( pvoid1, "REGCLASS" ); i++)
      {	
      		printf( "%s is in regclass :%d\n", KAPI_EnumName(pvoid1,i,"REGCLASS"), i);
      }
      if (outp == NULL)  
      {
          printf("You cannot open the file");
          return;
      }
      else      
      {
          char name[50]="nametype";
     //   i = KAPI_save_as_header_instruction_all_info(outp,pvoid1,name);

          if (i == 0) printf("\nSuccess!\n");
      } 
      i = KAPI_ArrayIndex( pvoid1, "cluster0CportMask", "%cportI0");
      bv1 = KAPI_GetBvVariable( pvoid1, "cluster0CportMask", i);
      for ( j = 0 ;j < bv1->n32Chunks; j++ )
      {	     
      	   printf ("\n index:%d bv is :%x \n",j,bv1->pint32Data[j]);
      }

      fuLD = KAPI_EnumIndex( pvoid1, "fu_t", "fuSEM" );
      bv2 = KAPI_cportMask4fu( pvoid1, 0 , fuLD ) ;
      printf ("the fuld's cport mask is %x", bv2);
      
      bv2 = KAPI_cportMask4ut( pvoid1, 0 , 1  ) ;
      printf ("the fuld's cport mask is %x\n", bv2);
       
      printf ("%d %d\n", fuLD,KAPI_srcOppCount( pvoid1, fuLD));
      KAPI_SylOrder_bid( pvoid1, (kapi_bid_t)1, mpsyl );
      for (i=0; i<3; i++)
      {
		printf("slot is [%d]\n",mpsyl[i]);
      }     

      //test for intracluster bypass
      bypasses = KAPI_IntraClusterBypassList( pvoid1, 0, 0, -1, -1, -1,
	 -1, -1, -1, -1, &numpl );  
      printf("bypass list count is %d",numpl);
      for ( i =0 ; i<numpl; i++)
      {
	 printf("with %s utSrc: %s cport : %d value is %d\n",KAPI_EnumName(pvoid1,(bypasses+i)->fuDest ,"fu_t"), KAPI_EnumName(pvoid1,(bypasses+i)->utSrc,"ut_t"),(bypasses+i)->cutportSrc,(bypasses+i)->iValue);
     
      }
//	    dump_instruction_fus(outp,pvoid1);
      KAPI_Finalize( pvoid1 );
   } else {
      fprintf( stderr, "KAPI_Initialize failed\n" );
   }

#if 0
   Test_bv128Rtns();
   Test_bv64Rtns();
   Test_bv32Rtns();
#endif

   return 0;
}

static void
Test_bv32Rtns()
{
}

static void
Test_bv64Rtns()
{
   bv64_t bv64Tmp, bv64Tmp2;
   char mpch[ 200 ];
   int i;

   /* test set bit */
   for ( i=0; i<=64; i++ ) {
      ZERO_bv64( bv64Tmp );
      SETBIT_bv64( bv64Tmp, i );
      printf("Bit %2d = %s\n", i, bv642pch( bv64Tmp, mpch ) );
   }

   /* test shiftL bit */
   for ( i=0; i<=64; i++ ) {
      ZERO_bv64( bv64Tmp );
      ONES_bv64( bv64Tmp, 4 );
      SHL_bv64( bv64Tmp2, bv64Tmp, i );
      printf("Bit %2d = %s\n", i, bv642pch( bv64Tmp2, mpch ) );
   }

   /* test shiftL bit */
   for ( i=0; i<=64; i++ ) {
      ZERO_bv64( bv64Tmp );
      ONES_bv64( bv64Tmp, 20 );
      SHL_bv64( bv64Tmp2, bv64Tmp, i );
      printf("Bit %2d = %s\n", i, bv642pch( bv64Tmp2, mpch ) );
   }

   /* test shiftL bit */
   for ( i=0; i<=64; i++ ) {
      ZERO_bv64( bv64Tmp );
      ONES_bv64( bv64Tmp, 40 );
      SHL_bv64( bv64Tmp2, bv64Tmp, i );
      printf("Bit %2d = %s\n", i, bv642pch( bv64Tmp2, mpch ) );
   }

   /* test shiftR bit */
   for ( i=0; i<=64; i++ ) {
      ZERO_bv64( bv64Tmp );
      ONES_bv64( bv64Tmp, 4 );
      SHL_bv64( bv64Tmp2, bv64Tmp, 60 );
      SHRL_bv64( bv64Tmp, bv64Tmp2, i );
      printf("Bit %2d = %s\n", i, bv642pch( bv64Tmp, mpch ) );
   }

   /* test shiftR bit */
   for ( i=0; i<=64; i++ ) {
      ZERO_bv64( bv64Tmp );
      ONES_bv64( bv64Tmp, 20 );
      SHL_bv64( bv64Tmp2, bv64Tmp, 44 );
      SHRL_bv64( bv64Tmp, bv64Tmp2, i );
      printf("Bit %2d = %s\n", i, bv642pch( bv64Tmp, mpch ) );
   }

   /* test shiftR bit */
   for ( i=0; i<=64; i++ ) {
      ZERO_bv64( bv64Tmp );
      ONES_bv64( bv64Tmp, 40 );
      SHL_bv64( bv64Tmp2, bv64Tmp, 24 );
      SHRL_bv64( bv64Tmp, bv64Tmp2, i );
      printf("Bit %2d = %s\n", i, bv642pch( bv64Tmp, mpch ) );
   }

   /* test extract bit */
   ZERO_bv64( bv64Tmp );
   ONES_bv64( bv64Tmp, 8 );
   SHL_bv64( bv64Tmp2, bv64Tmp, 28 );
   printf("Initial string %s\n", bv642pch( bv64Tmp2, mpch ) );
   for ( i=0; i<=64; i++ ) {
      ZERO_bv64( bv64Tmp );
      ONES_bv64( bv64Tmp, 8 );
      SHL_bv64( bv64Tmp2, bv64Tmp, 28 );
      EXTRACTU_bv64( bv64Tmp, bv64Tmp2, 4, i );
      printf("Extract len=%d pos %2d = %s\n", 4, i, bv642pch( bv64Tmp, mpch ) );
   }
}

static void
Test_bv128Rtns()
{
}
