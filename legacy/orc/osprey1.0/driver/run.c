/*

  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.

  This program is free software; you can redistribute it and/or modify it
  under the terms of version 2 of the GNU General Public License as
  published by the Free Software Foundation.

  This program is distributed in the hope that it would be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

  Further, this software is distributed without any warranty that it is
  free of the rightful claim of any third person regarding infringement 
  or the like.  Any license provided herein, whether implied or 
  otherwise, applies only to this software file.  Patent licenses, if 
  any, provided herein do not apply to combinations of this program with 
  other software, or any other product whatsoever.  

  You should have received a copy of the GNU General Public License along
  with this program; if not, write the Free Software Foundation, Inc., 59
  Temple Place - Suite 330, Boston MA 02111-1307, USA.

  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
  Mountain View, CA 94043, or:

  http://www.sgi.com

  For further information regarding this notice, see:

  http://oss.sgi.com/projects/GenInfo/NoticeExplan

*/


#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <signal.h>
#include <malloc.h>
#include <sys/param.h>
#include <sys/times.h>
#include <sys/procfs.h>
#include <limits.h>
#include <alloca.h>
#include <cmplrs/rcodes.h>
#include "run.h"
#include "string_utils.h"
#include "errors.h"
#include "file_names.h"
#include "phases.h"
#include "opt_actions.h"
#include "file_utils.h"
#include "lib_phase_dir.h"

boolean show_flag = FALSE;
boolean execute_flag = TRUE;
boolean time_flag = FALSE;
boolean prelink_flag = TRUE;
boolean quiet_flag = TRUE;
int memory_flag = 0;
boolean run_m4 = FALSE;
static boolean ran_twice = FALSE;
static int f90_fe_status = RC_OKAY;
static string f90_fe_name = NULL; 

static void init_time (void);
static void print_time (string phase);
static void my_psema(void);
static void my_vsema(void);
static int stop_on_exit( int pid );
static void print_mem(string phase, int num_maps);

static int Pipe[2]; /* for implementing semaphore */
#ifndef linux
static prmap_sgi_t mapbuf[100];
static prmap_sgi_arg_t mapbuf_desc = { (char *) mapbuf, sizeof (mapbuf)} ;
#define DATA_ADDRESS ((char *)0x10000000)
#define TEXT_ADDRESS ((char *)0x400000)
#endif

#ifdef linux
#define LOGFILE "/var/log/messages"
#else
#define LOGFILE "/usr/adm/SYSLOG"
#endif

#ifdef COMPILER_LICENSING

#include <lmsgi.h>

/*
#include "lmclient.h"
#include "lm_attr.h"
#include "lm_code.h"
*/

#include <invent.h>
#include <sys/sysmp.h>


LM_CODE(code, ENCRYPTION_CODE_1, ENCRYPTION_CODE_2, VENDOR_KEY1,
                     VENDOR_KEY2, VENDOR_KEY3, VENDOR_KEY4, VENDOR_KEY5);

#define LINGER_PERIOD  10
#define ALL (-1)
#define ALL_8BIT (ALL & 0xFF)

/* extern  char* license_errstr(); */

boolean licensed_component = FALSE;
char feature_name[10];
string compiler_licensing;


void get_license( string feature_name, boolean soft, boolean tiers )

{

 boolean err = FALSE;
 string hard_licensing;
 string tier_licensing;
 int numCPU;
 int archCPU;
 char *p;
 inventory_t *inv;
 int systemNumCPU = 0;
 int systemArchCPU;

 hard_licensing = getenv("HARD_LICENSING"); 
 if (hard_licensing != NULL) {
     soft = FALSE;
 }

 tier_licensing = getenv("TIER_LICENSING"); 
 if (tier_licensing != NULL) {
     tiers = FALSE;
 }

 if (license_init(&code,"sgifd",B_TRUE) < 0) {
    err = TRUE;
 }

 /* Set Up Soft Licensing */
 license_set_attr(LMSGI_NO_SUCH_FEATURE, NULL);

 /* Set the linger period to 10 seconds */
 license_set_attr(LM_A_LINGER, (LM_A_VAL_TYPE) LINGER_PERIOD);


 /*
    Attempt to check out a license
    leave the first argument as is.  you only need to fill in
    the feature name (program name) and version number.
 */

 if (license_chk_out(&code,     /* leave as is */
     feature_name,              /* replace with your feature name */
     "7.000"                    /* replace with your version number */
 )) {
      err = TRUE;
      fprintf(stderr,"%s\n", license_errstr());
      fprintf(stderr,"\n");
 }

 if ((tiers) && (err == FALSE)) {
     CONFIG *conf = lc_auth_data(get_job(), feature_name);
     if (conf == NULL) {
         err = TRUE;
         fprintf(stderr,"%s\n", license_errstr());
         fprintf(stderr,"\n");
     } else {
         if ((conf->users == 0) && (conf->lc_vendor_def != NULL) &&
             (strcmp(conf->lc_vendor_def, "") != 0)) {

           /* Nodelocked license with non empty vendor string */
           /* sscanf(conf->lc_vendor_def, "%d:%d", &numCPU, &archCPU); */

           p = conf->lc_vendor_def;
           while ( ((*p) != '\0')  && (((*p) < '0') || ((*p) > '9')) )
              p++;
           numCPU = atoi(p);

           while ((inv = getinvent()) != NULL) {
               if ((inv->inv_class == INV_PROCESSOR) &&
                   (inv->inv_type == INV_CPUBOARD)) {
                   if ((inv->inv_unit & ALL_8BIT) == ALL_8BIT) {
                       systemNumCPU = sysmp(MP_NPROCS);
                       systemArchCPU = inv->inv_state;
                   } else {
                       systemNumCPU = inv->inv_unit;
                       systemArchCPU = inv->inv_state;
                   }
               }
           }

           if ((numCPU >= systemNumCPU)) {
               err = FALSE;
           } else if ( numCPU == 0 ) {  /* A zero in the vendor string implies         */
               err = FALSE;             /* the largest system configuration tier       */
           } else {                     /* In other words, it will work on any system. */
               err = TRUE;
               fprintf(stderr, " This product's license is for %d CPU's; Your system has %d CPU's\n", numCPU, systemNumCPU ); 
               fprintf(stderr,"\n");
           }
        }
     }
 }

 if (err) {
   fprintf(stderr," This product (%s) requires a license password. \n", feature_name);
   fprintf(stderr," For license installation and trouble shooting \n");
   fprintf(stderr," information visit the web page: \n");
   fprintf(stderr,"\n");
   fprintf(stderr,"         http://www.sgi.com/Support/Licensing/install_docs.html \n");
   fprintf(stderr,"\n");
   fprintf(stderr," To obtain a Permanent license (proof of purchase\n");
   fprintf(stderr," required) or an Evaluation license please\n");
   fprintf(stderr," visit our license request web page: \n");
   fprintf(stderr,"\n");
#if 0
   fprintf(stderr,"    Internal SGI Users refer to:\n"); 
   fprintf(stderr,"         http://wwclass.csd.sgi.com/swl-internal/beta_lice.html\n");
   fprintf(stderr,"    Otherwise:\n");
#endif
   fprintf(stderr,"         http://www.sgi.com/Products/license.html \n");
   fprintf(stderr,"\n");
   fprintf(stderr,"         or send a blank email message to: \n");
   fprintf(stderr,"\n");
   fprintf(stderr,"         license@sgi.com \n");
   fprintf(stderr,"\n");
   fprintf(stderr," In North America, Silicon Graphics' customers may request \n");
   fprintf(stderr," Permanent licenses by sending a facsimile to: \n");
   fprintf(stderr,"\n");
   fprintf(stderr,"         (650) 390-0537 \n");
   fprintf(stderr,"\n");
   fprintf(stderr,"         or by calling our technical support hotline \n");
   fprintf(stderr,"\n");
   fprintf(stderr,"         1-800-800-4SGI \n");
   fprintf(stderr,"\n");
   fprintf(stderr," If you are Outside of North America or you are not a Silicon \n");
   fprintf(stderr," Graphics support customer then contact your local support provider. \n");
   fprintf(stderr,"\n");
#if 0
   fprintf(stderr," Note: Permanent Licenses require verification of entitlement \n");
   fprintf(stderr," (i.e., Proof-of-Purchase). \n");
   fprintf(stderr,"  \n");
#endif
   
   if (!soft)
      exit(-1);
 }
}

#endif

/* exec another program, putting result in output.
 * This is simple version of full run_phase. */
extern void
run_simple_program (string name, char **argv, string output)
{
	int forkpid;
	int fdout;
	int waitpid;
	int waitstatus;
	int termsig;

	/* fork a process */
	forkpid = fork();
	if (forkpid == -1) {
		error("no more processes");
		cleanup ();
		exit (RC_SYSTEM_ERROR);
		/* NOTREACHED */
	}

	if (forkpid == 0) {
		/* child */
		if ((fdout = creat (output, 0666)) == -1) {
			error ("cannot create output file %s", output);
			cleanup ();
			exit (RC_SYSTEM_ERROR);
			/* NOTREACHED */
		}
	    	dup2 (fdout, fileno(stdout));

		execv(name, argv);
		error("cannot exec %s", name);
		cleanup ();
		exit (RC_SYSTEM_ERROR);
		/* NOTREACHED */
	} else {
		/* parent */
		int procid;	/* id of the /proc file */
		while ((waitpid = wait (&waitstatus)) != forkpid) {
			if (waitpid == -1) {
				error("bad return from wait");
				cleanup();
				exit(RC_SYSTEM_ERROR);
				/* NOTREACHED */
			}
		}
		if (WIFSTOPPED(waitstatus)) {
			termsig = WSTOPSIG(waitstatus);
			error("STOPPED signal received from %s", name);
			cleanup();
			exit(RC_SYSTEM_ERROR);
			/* NOTREACHED */
		} else if (WIFEXITED(waitstatus)) {
		        int status = WEXITSTATUS(waitstatus);
			if (status != RC_OKAY) {
				/* internal error */
				/* most internal errors use exit code of 1 */
				internal_error("%s returned non-zero status %d",
					name, status);
			} 
			return;
		} else if(WIFSIGNALED(waitstatus)){
			termsig = WTERMSIG(waitstatus);
			error("%s died due to signal %d", name, termsig);
			if(waitstatus & WCOREFLAG) {
				error("core dumped");
			}
			if (termsig == SIGKILL) {
				error("Probably caused by running out of swap space -- check %s", LOGFILE);
			}
			cleanup();
			exit(RC_SYSTEM_ERROR);
		} else {
			/* cannot happen, I think! */
			internal_error("driver exec'ing is confused");
			return;
		}
	}
}

extern void
run_phase (phases_t phase, string name, string_list_t *args)
{
	char **argv;
	int argc;
	string_item_t *p;
	string output = NULL;
	string input = NULL;
	boolean save_stderr = FALSE;
	int fdin, fdout;
	int forkpid;
	int waitpid;
	int waitstatus;
	int termsig;
#ifndef linux
	SIG_PF sigterm;
	SIG_PF sigint;
#endif
	int	num_maps;
	string rld_path;
	struct stat stat_buf;
	const boolean uses_message_system = 
			(phase == P_f90_fe || phase == P_f90_cpp ||
			 phase == P_cppf90_fe);
	
	if (show_flag) {
		/* echo the command */
		fprintf(stderr, "%s ", name);
		print_string_list(stderr, args);
	}
	if (!execute_flag) return;

	if (time_flag) init_time();

	/* copy arg_list to argv format that exec wants */
	argc = 1;
	for (p = args->head; p != NULL; p=p->next) {
		argc++;
	}
	argv = (char **) malloc((argc+1)*sizeof(char*));
	argv[0] = name;
	for (argc = 1, p = args->head; p != NULL; argc++, p=p->next) {
		/* don't put redirection in arg list */
		if (same_string(p->name, "<")) {
			/* has input file */
			input = p->next->name;
			break;
		} else if (same_string(p->name, ">")) {
			/* has output file */
			output = p->next->name;
			break;
		} else if (same_string(p->name, ">&")) {
			/* has error output file */
			output = p->next->name;
			save_stderr = TRUE;
			break;
		}
		argv[argc] = p->name;
	}
	argv[argc] = NULL;


#ifdef COMPILER_LICENSING
/***********************/
/* PUT Licensing Here  */
/***********************/
        compiler_licensing = getenv("COMPILER_LICENSING"); 
        if (compiler_licensing == NULL) {
           if  (strstr(name, "fecc")) {
                licensed_component = TRUE;
                /* printf("COMPILER LICENSING ON\n"); */
                feature_name[0] = 'c';
                feature_name[1] = 'p';
                feature_name[2] = 'p';
                feature_name[3] = '\0';
          
           } else if (strstr(name, "fec")) {
                licensed_component = TRUE;
                /* printf("COMPILER LICENSING ON\n"); */
                feature_name[0] = 'c';
                feature_name[1] = 'c';
                feature_name[2] = '\0';
      
           } else if (strstr(name, "mfef77")) {
                licensed_component = TRUE;
                feature_name[0] = 'f';
                feature_name[1] = '7';
                feature_name[2] = '7';
                feature_name[3] = '\0';

           } else if (strstr(name, "mfef90")) {
                licensed_component = TRUE;
                feature_name[0] = 'f';
                feature_name[1] = '9';
                feature_name[2] = '0';
                feature_name[3] = '\0';

           } else
                licensed_component = FALSE;
       
           if (licensed_component) {
               get_license(feature_name, TRUE, TRUE); /* soft licensing == TRUE; tier licensing == TRUE */
           }
         }
#endif
	/* if we want memory stats, we need to open a pipe as a semaphore */
	if (memory_flag)
		{
		if (pipe(Pipe) < 0)
			{
			error("pipe failed for -showm");
			cleanup ();
			exit (RC_SYSTEM_ERROR);
			/* NOTREACHED */
			}
		}

	/* fork a process */
	forkpid = fork();
	if (forkpid == -1) {
		error("no more processes");
		cleanup ();
		exit (RC_SYSTEM_ERROR);
		/* NOTREACHED */
	}

	if (forkpid == 0) {
		/* child */
		/* if we want memory stats, we have to wait for
		   parent to connect to our /proc */
		if (memory_flag) my_psema();

		if (input != NULL) {
			if ((fdin = open (input, O_RDONLY)) == -1) {
				error ("cannot open input file %s", input);
				cleanup ();
				exit (RC_SYSTEM_ERROR);
				/* NOTREACHED */
			}
	    		dup2 (fdin, fileno(stdin));
		}
		if (output != NULL) {
			if ((fdout = creat (output, 0666)) == -1) {
				error ("cannot create output file %s", output);
				cleanup ();
				exit (RC_SYSTEM_ERROR);
				/* NOTREACHED */
			}
			if (save_stderr) {
	    			dup2 (fdout, fileno(stderr));
			} else {
	    			dup2 (fdout, fileno(stdout));
			}
		} 

		rld_path = get_phase_ld_library_path (phase);
		
		if (rld_path != 0) {
		    string env_name = "LD_LIBRARYN32_PATH";
		    int len;
		    string new_env;
    
		    len = strlen (env_name) + strlen(rld_path) + 2;
		    
		    if (ld_libraryn32_path) {
			len += strlen (ld_libraryn32_path) + 1;
			new_env = alloca (len);
			sprintf (new_env, "%s=%s:%s", env_name, rld_path,
				 ld_libraryn32_path); 
		    } else {
			new_env = alloca (len);
			sprintf (new_env, "%s=%s", env_name, rld_path);
		    }

		    putenv (new_env);

		    /* repeat the same thing in case the component is built
		       O32 */

		    env_name = "LD_LIBRARY_PATH";
		    len = strlen (env_name) + strlen(rld_path) + 2;
		    
		    if (ld_library_path) {
			len += strlen (ld_library_path) + 1;
			new_env = alloca (len);
			sprintf (new_env, "%s=%s:%s", env_name, rld_path,
				 ld_library_path); 
		    } else {
			new_env = alloca (len);
			sprintf (new_env, "%s=%s", env_name, rld_path);
		    }

		    putenv (new_env);

		}
		
		if (uses_message_system) {
		   string toolroot;
		   string nlspath;
		   toolroot = getenv("TOOLROOT");
		   nlspath = getenv("NLSPATH");
		   if (nlspath==NULL) {
		   	int len;
		   	string new_env;
		   	string env_name = "NLSPATH=";
			string env_file = "/%N.cat";
#ifdef linux
			string env_path = get_phase_dir(P_f90_fe);
			/* The phase_dir already has the prepended toolroot */
			toolroot = "\0";
#else
			string env_path = "/usr/lib/locale/C/LC_MESSAGES";
		      	if (toolroot == NULL) {
				toolroot = "\0";
		      	}
#endif
		      	/* add toolroot as prefix to phase dirs */
		      	len = strlen(env_name) + strlen(toolroot) + strlen(env_path) + 
			  strlen(env_file) + 1;
		      	new_env = alloca(len);
		      	sprintf(new_env,"%s%s%s%s",env_name,toolroot,env_path,env_file);
		      	putenv(new_env);
		   }
		}

		if (uses_message_system && getenv("ORIG_CMD_NAME") == NULL) {
		   const string env_name = "ORIG_CMD_NAME=";
		   const int len = strlen(env_name) + strlen(program_name) + 1;
		   const string new_env = alloca(len);

		   strcpy(new_env, env_name);
		   strcat(new_env, program_name);
		   putenv(new_env);
		}

		if (phase == P_f90_fe) {
		   string root;
		   string modulepath;
		   int len;
		   string new_env;
		   string env_name = "FORTRAN_SYSTEM_MODULES=";
		   string env_val = "/usr/lib/f90modules";
		   root = getenv("TOOLROOT");
		   if (root != NULL) {
		      len = strlen(env_val) + strlen(root) +3 + strlen(env_val);
		      new_env = alloca(len);
		      sprintf(new_env,"%s/%s:%s",root,env_val,env_val);
		      env_val = new_env;
		   }
		   modulepath = getenv("FORTRAN_SYSTEM_MODULES");
		   if (modulepath != NULL) {
		      /* Append env_val to FORTRAN_SYSTEM_MODULES */
		      if (modulepath[strlen(modulepath)-1] == ':') {
			 /* Just append env_val */
			 len = strlen(modulepath) + strlen(env_val) + 1;
			 new_env = alloca(len);
			 sprintf(new_env,"%s%s",modulepath,env_val);
		      } else {
			 /* append :env_val */
			 len = strlen(modulepath) + strlen(env_val) + 2;
			 new_env = alloca(len);
			 sprintf(new_env,"%s:%s",modulepath,env_val);
		      }
		      env_val = new_env;
		   }
		   
		   /* add root as prefix to phase dirs */
		   len = strlen(env_name) + strlen(env_val) + 1;
		   new_env = alloca(len);
		   sprintf(new_env,"%s%s",env_name,env_val);
		   putenv(new_env);
		}
#ifdef linux
		{
		    /* need to setenv COMPILER_PATH for collect to find ld */
		    string env_name = "COMPILER_PATH";
		    string collect_path = get_phase_dir(P_collect);
		    int len = strlen (env_name) + strlen(collect_path) + 2;
		    string new_env = alloca (len);

		    sprintf (new_env, "%s=%s", env_name, collect_path); 
		    putenv (new_env);
		}
#endif
	        /* set orcc-specific include path to CPATH 
             */ 
		if (phase == P_cpp   || phase == P_gcpp || phase == P_gcpp_plus ||
			phase == P_c_cpp || phase == P_cplus_cpp) {

            string env_val;
			string tr = getenv ("TOOLROOT");
            int len; 

			if (!tr) { tr = ""; }
			
#ifndef CROSS_COMPILATION 
            {
			len = strlen ("CPATH=") + 
						strlen (tr) + 1 /* for '/' right after TOOLROOT */ +
						strlen (LIBPATH "/") + 
                        strlen ("include")   + 1 /* for NULL */; 	
			env_val = malloc (len);
			sprintf (env_val, "CPATH=%s/%s/include", tr, LIBPATH);
            }
#else 
            {
                /* the statements enclosed by {} are very UGLY!!!
                 *  These statements are added right before 2.0 relase. 
                 *  at that time, orcc perform cpp via gcc which is
                 *  shipped with NUE. there are at least two verion of
                 *  NUE are available, NUE1.0 and NUE1.2. to make them
                 *  cpp happy, I (shuxin yang) hardwire some absolute
                 *  header-file-paths. forgive me please!
                 */
            string gcc_2_9_ia64_000216_inc;
            string gcc_2_96_ia64_000717_inc;
            string cross_inc;
            
            gcc_2_9_ia64_000216_inc = 
                "/nue/usr/lib/gcc-lib/ia64-hp-linux/2.9-ia64-000216/include";

            gcc_2_96_ia64_000717_inc = 
                "/nue/usr/lib/gcc-lib/ia64-hp-linux/2.96-ia64-000717/include";

            cross_inc = "/nue/usr/ia64-hp-linux/include";

            len = strlen ("CPATH=") + strlen (tr) + 1 /* strlen("/") */ + 
                     strlen (PHASEPATH) + strlen("/include") + 
                  1/*strlen(":") */ + strlen (gcc_2_9_ia64_000216_inc)  + 
                  1/*strlen(":") */ + strlen (gcc_2_96_ia64_000717_inc) + 
                  1/*strlen(":") */ + strlen (cross_inc) + 
                  1/* for '\0' */;

			env_val = malloc (len + 32); /* we may make some mistake in the calc 
                                          * of "len", hence extra 32*/

			sprintf (env_val, "CPATH=%s/%s/include:%s:%s:%s", 
                               tr, PHASEPATH, 
                               gcc_2_9_ia64_000216_inc,
                               gcc_2_96_ia64_000717_inc, 
                               cross_inc);
            }
#endif /* CROSS_COMPILATION */

			putenv (env_val);
            free (env_val);
		}

		execv(name, argv);
		error("cannot exec %s", name);
		cleanup ();
		exit (RC_SYSTEM_ERROR);
		/* NOTREACHED */
	} else {
		/* parent */
		int procid;	/* id of the /proc file */
#ifndef linux
   		sysset_t syscallSet;
		/* copy this wait stuff from old driver */
		sigint = sigset (SIGINT, SIG_IGN);
		sigterm = sigset (SIGTERM, SIG_IGN);
#endif
		/* if we are interested in memory statistics, we need to
		   set a stop-on-exit for the child */
		if (memory_flag && (procid = stop_on_exit(forkpid))) {
#ifndef linux
   		  /* now go and get the memory maps */
		  while (1) {
   			if ((num_maps=ioctl(procid, PIOCMAP_SGI, &mapbuf_desc)) < 0) {
				perror("PIOCMAP_SGI");
				close(procid);
				memory_flag = 0;
				break;
   			}
			
   			premptyset(&syscallSet);
   			if (ioctl(procid, PIOCSEXIT, &syscallSet) < 0) {
      				perror("PIOCSEXIT");
				close(procid);
				memory_flag = 0;
				break;
				}
   			/* continue the process */
   			ioctl(procid, PIOCRUN, NULL);
   			close(procid);
			break;
		  } /* while */
#else
		  /* not supported under linux */
		  memory_flag = 0;
#endif
		} else {
			/* if we cant set flags on child, dont use -showm */
			memory_flag = 0;
		}

		while ((waitpid = wait (&waitstatus)) != forkpid) {
			if (waitpid == -1) {
				error("bad return from wait");
				cleanup();
				exit(RC_SYSTEM_ERROR);
				/* NOTREACHED */
			}
		}
#ifndef linux
		(void)sigset (SIGINT, sigint);
		(void)sigset (SIGTERM, sigterm);
#endif
		if (time_flag) print_time(name);
		if (memory_flag) print_mem(name, num_maps);

		if (WIFSTOPPED(waitstatus)) {
			termsig = WSTOPSIG(waitstatus);
			error("STOPPED signal received from %s", name);
			cleanup();
			exit(RC_SYSTEM_ERROR);
			/* NOTREACHED */
		} else if (WIFEXITED(waitstatus)) {
		        int status = WEXITSTATUS(waitstatus);
			extern int inline_t;
			boolean internal_err = FALSE;
			boolean user_err = FALSE;
		
			if (phase == P_prof) {
                           /* Make sure the .cfb files were created before
                              changing the STATUS to OKAY */
                           if (prof_file != NULL) {
                              if (!(stat(fb_file, &stat_buf) != 0 && errno == ENOENT))
                                  status = RC_OKAY;
                           } else {
			      internal_error("No count file was specified for a prof run");
			      perror(program_name);
                           }
                        }

			if (phase == P_f90_fe && keep_listing) {
			    string cif_file;
			    cif_file = construct_given_name(
					  drop_path(source_file), "T", TRUE);
                            if (!(stat(cif_file, &stat_buf) != 0 && errno == ENOENT))
			       f90_fe_status = status;
			       f90_fe_name = string_copy(name);

			       /* Change the status to OKAY so that we can 
				* execute the lister on the cif_file; we will
				* take appropriate action on this status once 
				* the lister has finished executing. See below.
				*/

			       status = RC_OKAY;
                        }

			if (phase == P_lister) {
			   if (status == RC_OKAY && f90_fe_status != RC_OKAY) {

			      /* We had encountered an error in the F90_fe phase
			       * but we ignored it so that we could execute the
			       * lister on the cif file; we need to switch the
			       * status to the status we received from F90_fe
			       * and use the name of the F90_fe_phase, so that
			       * we can issue a correct error message.
			       */

			       status = f90_fe_status;
			       name = string_copy(f90_fe_name);

			       /* Reset f90_fe_status to OKAY for any further
				* compilations on other source files.
				*/

			       f90_fe_status = RC_OKAY;
                           }
                        }

			switch (status) {
			case RC_OKAY:
				if (inline_t == UNDEFINED
				    && is_matching_phase(
					get_phase_mask(phase), P_any_fe) )
				{
					inline_t = FALSE;
				}
				break;
			case RC_NEED_INLINER:
				if (inline_t == UNDEFINED
				    && is_matching_phase(
					get_phase_mask(phase), P_any_fe) )
				{
					inline_t = TRUE;
				}
				/* completed successfully */
				break;
				
			case RC_USER_ERROR:
			case RC_NORECOVER_USER_ERROR:
			case RC_SYSTEM_ERROR:
			case RC_GCC_ERROR:
				user_err = TRUE;
				break;

			case RC_OVERFLOW_ERROR:
				if (!ran_twice && phase == P_be) {
					/* try recompiling with larger limits */
					ran_twice = TRUE;
					add_string (args, "-TENV:long_eh_offsets");
					add_string (args, "-TENV:large_stack");
					run_phase (phase, name, args);
					return;
				}
				internal_err = TRUE;
				break;
			case RC_INTERNAL_ERROR:
				if (phase == P_ld || phase == P_ldplus) {
					/* gcc/ld returns 1 for undefined */
					user_err = TRUE;
				}
				else
					internal_err = TRUE;
				break;
			default:
				internal_err = TRUE;
				break;
			} 
			if (internal_err) {
				internal_error("%s returned non-zero status %d",
					name, status);
			}
			else if (user_err) {
				/* assume phase will print diagnostics */
				if (!show_flag || save_stderr) {
					nomsg_error();
				} else {
					error("%s returned non-zero status %d",
						name, status);
				}
			}
			ran_twice = FALSE;
			return;
		} else if(WIFSIGNALED(waitstatus)){
			termsig = WTERMSIG(waitstatus);
			error("%s died due to signal %d", name, termsig);
			if(waitstatus & WCOREFLAG) {
				error("core dumped");
			}
			if (termsig == SIGKILL) {
				error("Probably caused by running out of swap space -- check %s", LOGFILE);
			}
			cleanup();
			exit(RC_SYSTEM_ERROR);
		} else {
			/* cannot happen, I think! */
			internal_error("driver exec'ing is confused");
			return;
		}
	}
}

/*
 * Handler () is used for catching signals.
 */
extern void
handler (int sig)
{
	error("signal %s caught, stop processing", _sys_siglist[sig]);
	cleanup ();
	exit (RC_SYSTEM_ERROR);
}

/* set signal handler */
extern void
catch_signals (void)
{
    /* modelled after Handle_Signals in common/util/errors.c */
    if (signal (SIGHUP, SIG_IGN) != SIG_IGN)
        signal (SIGHUP,  handler);
    if (signal (SIGINT, SIG_IGN) != SIG_IGN)
        signal (SIGINT,  handler);
    if (signal (SIGQUIT, SIG_IGN) != SIG_IGN)
        signal (SIGQUIT,  handler);
    if (signal (SIGILL, SIG_IGN) != SIG_IGN)
        signal (SIGILL,  handler);
    if (signal (SIGTRAP, SIG_IGN) != SIG_IGN)
        signal (SIGTRAP,  handler);
    if (signal (SIGIOT, SIG_IGN) != SIG_IGN)
        signal (SIGIOT,  handler);
#ifndef linux
    if (signal (SIGEMT, SIG_IGN) != SIG_IGN)
        signal (SIGEMT,  handler);
#endif
    if (signal (SIGFPE, SIG_IGN) != SIG_IGN)
        signal (SIGFPE,  handler);
    if (signal (SIGBUS, SIG_IGN) != SIG_IGN)
        signal (SIGBUS,  handler);
    if (signal (SIGSEGV, SIG_IGN) != SIG_IGN)
        signal (SIGSEGV,  handler);
    if (signal (SIGTERM, SIG_IGN) != SIG_IGN)
        signal (SIGTERM,  handler);
    if (signal (SIGPIPE, SIG_IGN) != SIG_IGN)
        signal (SIGPIPE,  handler);
}


/* this code is copied from csh, for printing times */

clock_t time0;
struct tms tm0;

static void
init_time (void)
{
    time0 = times (&tm0);
}


static void
print_time (string phase)
{
    clock_t time1, wtime;
    double utime, stime;
    struct tms tm1;

    time1 = times (&tm1);
    utime = (double)(tm1.tms_utime + tm1.tms_cutime -
		     tm0.tms_utime - tm0.tms_cutime) / (double)HZ;
    stime = (double)(tm1.tms_stime + tm1.tms_cstime -
		     tm0.tms_stime - tm0.tms_cstime) / (double)HZ;
    wtime = time1 - time0;

    fprintf (stderr, "%s phase time:  %.2fu %.2fs %lu:%04.1f %.0f%%\n",
		phase, utime, stime, wtime / (60*HZ),
		(double)(wtime % (60*HZ)) / (double)HZ,
		(utime + stime) / ((double)wtime / (double)HZ) * 100.0);
}

/* code used to handle the -showm */

static int
stop_on_exit( int pid )
{	/* sets a child process to stop on exit */
#ifndef linux
   int procid;	/* fd for process */
   char procname[20];	/* name - /proc/<pid> */
   prstatus_t pstatus;
   long modeFlags = 0;
   sysset_t syscallSet;

   sprintf(procname, "/proc/%-d", pid);
   if ((procid = open(procname, O_RDWR|O_EXCL)) == -1 ) {
      warning("Failed Opening /proc");
      /* kill(pid, SIGKILL); */
      return 0;
   }

   /* set it so it wont trace child */
   modeFlags = PR_FORK;
   if (ioctl(procid, PIOCRESET, &modeFlags) < 0) {
      perror("PIOCRESET");
      /* kill(pid, SIGKILL); */
      close(procid);
      return 0;
   }

   premptyset(&syscallSet);
   praddset(&syscallSet, SYS_exit);
   if (ioctl(procid, PIOCSENTRY, &syscallSet) < 0) {
      perror("PIOCSENTRY");
      /* kill(pid, SIGKILL); */
      close(procid);
      return 0;
   }

   my_vsema();

   if (ioctl(procid, PIOCWSTOP, &pstatus) < 0) {
      warning("process disappeared\n");
      perror("PIOCWSTOP");
      /* kill(pid, SIGKILL); */
      close(procid);
      return 0;
   }
   
   if (pstatus.pr_why != PR_SYSENTRY) {
      warning("program halted prematurely\n");
      /* kill(pid, SIGKILL); */
      close(procid);
      return 0;
   }
   if (pstatus.pr_what != SYS_exit ) {
      warning("program halted in wrong system call\n");
      /* kill(pid, SIGKILL); */
      close(procid);
      return 0;
   }
   if (pstatus.pr_errno != 0) {
      warning("unknown problem\n");
      return 0;
   }

	/* at this point the child is stopped on exit */
   return procid;
#else
  return 0;
#endif
}

static void
my_psema(void)
{
  char c;

  close ( Pipe[1] );
  if ( read(Pipe[0], &c, 1) != 1 ) {
    error ( "read on pipe failed" );
    exit ( RC_SYSTEM_ERROR );
  }
  close ( Pipe[0] );
}

static void
my_vsema(void)
{
        char c;

	close(Pipe[0]);
        if (write(Pipe[1], &c, 1) != 1)
		{
                error("write on pipe failed");
		exit(RC_SYSTEM_ERROR);
		}
	close(Pipe[1]);
}

static void
print_mem(string phase, int num_maps)
{
#ifndef linux
	int i,identified;
	ulong_t mflags;
	size_t text_size, data_size, brk_size, stack_size,
		so_text_size, so_data_size, so_brk_size, mmap_size;
	int verbose=(memory_flag>1);

	text_size= data_size= brk_size= stack_size=
		so_text_size= so_data_size= so_brk_size= mmap_size= 0;

   /* now print out the maps obtained */
   for (i=0; i<num_maps; i++)
    {
    identified=0;
    mflags= mapbuf[i].pr_mflags & ((1 << MA_REFCNT_SHIFT)-1);
    if (mflags==(MA_READ|MA_SHARED|MA_EXEC|MA_PRIMARY))
	{
	/* program text */
	text_size += mapbuf[i].pr_size ;
	identified=1;
	}
    if (mflags==(MA_READ|MA_SHARED|MA_EXEC))
	{
	/* .so text */
	so_text_size += mapbuf[i].pr_size ;
	identified=1;
	}
    if (mflags==(MA_COW|MA_READ|MA_WRITE) && mapbuf[i].pr_vaddr < DATA_ADDRESS)
	{
	/* .so  data */
	so_data_size += mapbuf[i].pr_size ;
	identified=1;
	}
    if ((mflags==(MA_READ|MA_WRITE) || mflags==(MA_READ) ||
	mflags==(MA_READ|MA_WRITE|MA_SHARED) || mflags==(MA_READ|MA_SHARED))
	&& mapbuf[i].pr_vaddr < DATA_ADDRESS)
	{
	/* some sort of mmap region */
	mmap_size += mapbuf[i].pr_size ;
	identified=1;
	}
    mflags&= ~MA_PRIMARY;
    if (mflags==(MA_COW|MA_READ|MA_WRITE) && mapbuf[i].pr_vaddr >= DATA_ADDRESS)
	{
	/* data space */
	data_size += mapbuf[i].pr_size ;
	identified=1;
	}
    if (mflags==(MA_COW|MA_READ|MA_WRITE|MA_BREAK) && mapbuf[i].pr_vaddr >= DATA_ADDRESS)
	{
	/* brk space */
	brk_size += mapbuf[i].pr_size ;
	identified=1;
	}
    if (mflags==(MA_STACK|MA_READ|MA_WRITE) || mflags==(MA_STACK|MA_READ|MA_WRITE|MA_COW))
	{
	/* stack space */
	stack_size += mapbuf[i].pr_size ;
	identified=1;
	}
    if (identified==0) 
	{
	fprintf(stderr,"-showm: Unidentified: segment %d\n",i);
	}
    if (verbose || identified==0)
	{
	fprintf(stderr,"pr_vaddr[%d]= %lx\n",i,mapbuf[i].pr_vaddr);
	fprintf(stderr,"pr_size[%d]= %lx\n",i,mapbuf[i].pr_size);
	fprintf(stderr,"pr_off[%d]= %lx\n",i,mapbuf[i].pr_off);
	fprintf(stderr,"pr_mflags[%d]= %lx\n",i,mapbuf[i].pr_mflags);
	fprintf(stderr,"pr_vsize[%d]= %lx\n",i,mapbuf[i].pr_vsize);
	fprintf(stderr,"pr_psize[%d]= %lx\n",i,mapbuf[i].pr_psize);
	fprintf(stderr,"pr_wsize[%d]= %lx\n",i,mapbuf[i].pr_wsize);
	fprintf(stderr,"pr_rsize[%d]= %lx\n",i,mapbuf[i].pr_rsize);
	fprintf(stderr,"pr_msize[%d]= %lx\n",i,mapbuf[i].pr_msize);
	fprintf(stderr,"pr_dev[%d]= %lx\n",i,mapbuf[i].pr_dev);
	fprintf(stderr,"pr_ino[%d]= %lx\n",i,mapbuf[i].pr_ino);
	fprintf(stderr,"\n");
	}
    }
  fprintf(stderr, "%s phase mem: %ldT %ldD %ldB %ldS %ldt %ldd %ldb %ldm= %ldK\n",
	phase, text_size/1024, data_size/1024, brk_size/1024, stack_size/1024, 
	so_text_size/1024, so_data_size/1024, so_brk_size/1024, mmap_size/1024,
	(text_size+data_size+brk_size+stack_size+
		so_text_size+so_data_size+so_brk_size+mmap_size)/1024);
  if (verbose) {
   fprintf(stderr,"text_size= %ld Kbytes\n", text_size/1024);
   fprintf(stderr,"data_size= %ld Kbytes\n", data_size/1024);
   fprintf(stderr,"brk_size= %ld Kbytes\n", brk_size/1024);
   fprintf(stderr,"stack_size= %ld Kbytes\n", stack_size/1024);
   fprintf(stderr,"so_text_size= %ld Kbytes\n", so_text_size/1024);
   fprintf(stderr,"so_data_size= %ld Kbytes\n", so_data_size/1024);
   fprintf(stderr,"so_brk_size= %ld Kbytes\n", so_brk_size/1024);
   fprintf(stderr,"mmap_size= %ld Kbytes\n", mmap_size/1024);
   fprintf(stderr,"TOTAL_SIZE= %ld Kbytes\n", (text_size+data_size+brk_size+stack_size+
	so_text_size+so_data_size+so_brk_size+mmap_size)/1024);
  }
#else
  fprintf(stderr, "-showm not implemented under linux\n");
#endif
}



