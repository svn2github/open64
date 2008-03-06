/*
 * Copyright 2003, 2004 PathScale, Inc.  All Rights Reserved.
 */

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
#include <string.h>
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
#ifdef TARG_X8664
#include "pathscale_defs.h"
#else 
#include "lib_phase_dir.h"
#endif


boolean show_flag = FALSE;
boolean show_but_not_run = FALSE;
boolean execute_flag = TRUE;
boolean time_flag = FALSE;
boolean prelink_flag = TRUE;
boolean quiet_flag = TRUE;
int memory_flag = 0;
boolean run_m4 = FALSE;
static boolean ran_twice = FALSE;
static int f90_fe_status = RC_OKAY;
static char *f90_fe_name = NULL; 

static void init_time (void);
static void print_time (char *phase);
static void my_psema(void);
static void my_vsema(void);
static int stop_on_exit( int pid );
static void print_mem(char *phase, int num_maps);

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

static void my_execv(const char *name, char *const argv[])
{
    int len = strlen(name);
    int passthru = len > 4 && name[len - 4] == '/' &&
	(strcmp(name + len - 3, "gcc") == 0 ||
	 strcmp(name + len - 3, "g++") == 0);
    
    if (show_but_not_run) {
	int i;

	fprintf(stderr, "\"%s\" ", name);
	for (i = 1; argv[i] != NULL; i++)
	    fprintf(stderr, "\"%s\" ", argv[i]);
	fputc('\n', stderr);
	if (!passthru)
	    do_exit (0);
    }
			
    execv(name, argv);
    error("cannot exec %s: %m", name);
    cleanup ();
    do_exit (RC_SYSTEM_ERROR);
    /* NOTREACHED */
}

/* exec another program, putting result in output.
 * This is simple version of full run_phase. */
void
run_simple_program (char *name, char **argv, char *output)
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
		do_exit (RC_SYSTEM_ERROR);
		/* NOTREACHED */
	}

	if (forkpid == 0) {
		/* child */
		if ((fdout = creat (output, 0666)) == -1) {
			error ("cannot create output file %s", output);
			cleanup ();
			do_exit (RC_SYSTEM_ERROR);
			/* NOTREACHED */
		}
	    	dup2 (fdout, fileno(stdout));

		my_execv(name, argv);
	} else {
		/* parent */
		int procid;	/* id of the /proc file */
		while ((waitpid = wait (&waitstatus)) != forkpid) {
			if (waitpid == -1) {
				error("bad return from wait");
				cleanup();
				do_exit(RC_SYSTEM_ERROR);
				/* NOTREACHED */
			}
		}
		if (WIFSTOPPED(waitstatus)) {
			termsig = WSTOPSIG(waitstatus);
			error("STOPPED signal received from %s", name);
			cleanup();
			do_exit(RC_SYSTEM_ERROR);
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
                        switch (termsig) {
                        case SIGHUP:
                        case SIGINT:
                        case SIGQUIT:
                        case SIGKILL:
                        case SIGTERM:
                                error("%s died due to signal %d", name, termsig);
                                break;
                        default:
                                internal_error("%s died due to signal %d",
                                               name, termsig);
                                break;
                        }

			if(waitstatus & WCOREFLAG) {
				error("core dumped");
			}
			if (termsig == SIGKILL) {
				error("Probably caused by running out of swap space -- check %s", LOGFILE);
			}
			cleanup();
			do_exit(RC_SYSTEM_ERROR);
		} else {
			/* cannot happen, I think! */
			internal_error("driver exec'ing is confused");
			return;
		}
	}
}

static void my_putenv(const char *name, const char *fmt, ...)
    __attribute__((format (printf, 2, 3)));
    
static void my_putenv(const char *name, const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    char *rhs, *env;
    int len;

    if (vasprintf(&rhs, fmt, ap) == -1) {
	internal_error("cannot allocate memory");
	do_exit(RC_SYSTEM_ERROR);
    }
	
    if (show_but_not_run)
	fprintf(stderr, "%s=\"%s\" ", name, rhs);

    // This looks like a memory leak, but it's not interesting, because
    // we're either going to call exec() or do_exit() soon after we're done.

    if (asprintf(&env, "%s=%s", name, rhs) == -1) {
	internal_error("cannot allocate memory");
	do_exit(RC_SYSTEM_ERROR);
    }

    putenv(env);
	
    va_end(ap);
}

char *
get_binutils_lib_path(void)
{
	static const char *binutils_library_path = "../i686-pc-linux-gnu/" OPEN64_TARGET "/lib";
	char *my_path;
	
	asprintf(&my_path, "%s/%s", get_executable_dir(),
		 binutils_library_path);
	return my_path;
}


void
run_phase (phases_t phase, char *name, string_list_t *args)
{
	char **argv;
	int argc;
	string_item_t *p;
	char *output = NULL;
	char *input = NULL;
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
	char *rld_path;
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
	        //bug# 581, bug #932, bug #1049
		if (p->name == NULL) 
                  continue;
		argc++;
	}
	argv = (char **) malloc((argc+1)*sizeof(char*));
	argv[0] = name;
	for (argc = 1, p = args->head; p != NULL; argc++, p=p->next) {
	        //bug# 581, bug #932
		if (p->name[0] == '\0') {
		  argc--;
                  continue;
		}
		/* don't put redirection in arg list */
		if (strcmp(p->name, "<") == 0) {
			/* has input file */
			input = p->next->name;
			break;
		} else if (strcmp(p->name, ">") == 0) {
			/* has output file */
			output = p->next->name;
			break;
		} else if (strcmp(p->name, ">&") == 0) {
			/* has error output file */
			output = p->next->name;
			save_stderr = TRUE;
			break;
		}
		argv[argc] = p->name;
	}
	argv[argc] = NULL;

#ifndef KEY
	/* if we want memory stats, we need to open a pipe as a semaphore */
	if (memory_flag)
		{
		if (pipe(Pipe) < 0)
			{
			error("pipe failed for -showm");
			cleanup ();
			do_exit (RC_SYSTEM_ERROR);
			/* NOTREACHED */
			}
		}
#endif // !KEY

	/* fork a process */
	forkpid = fork();
	if (forkpid == -1) {
		error("no more processes");
		cleanup ();
		do_exit (RC_SYSTEM_ERROR);
		/* NOTREACHED */
	}

	if (forkpid == 0) {
		char *my_path, *l_path, *l32_path, *nls_path, *env_path;
		
		/* child */
		/* if we want memory stats, we have to wait for
		   parent to connect to our /proc */
#ifndef KEY
		if (memory_flag) my_psema();
#endif

		if (input != NULL) {
			if ((fdin = open (input, O_RDONLY)) == -1) {
				error ("cannot open input file %s", input);
				cleanup ();
				do_exit (RC_SYSTEM_ERROR);
				/* NOTREACHED */
			}
	    		dup2 (fdin, fileno(stdin));
		}
		if (output != NULL) {
			if ((fdout = creat (output, 0666)) == -1) {
				error ("cannot create output file %s", output);
				cleanup ();
				do_exit (RC_SYSTEM_ERROR);
				/* NOTREACHED */
			}
			if (save_stderr) {
	    			dup2 (fdout, fileno(stderr));
			} else {
	    			dup2 (fdout, fileno(stdout));
			}
		} 

		my_path = get_binutils_lib_path();
		rld_path = get_phase_ld_library_path (phase);
		
		if (rld_path != 0)
			asprintf(&my_path, "%s:%s", my_path, rld_path);
		
		l_path = l32_path = my_path;
		
		if (ld_library_path)
			asprintf(&l_path, "%s:%s", my_path, ld_library_path);

		if (ld_libraryn32_path)
			asprintf(&l32_path, "%s:%s", my_path,
				 ld_libraryn32_path);

		my_putenv("LD_LIBRARY_PATH", l_path);
		my_putenv("LD_LIBRARYN32_PATH", l32_path);

#ifndef KEY		
		if (uses_message_system) {
		   char *toolroot;
		   char *nlspath;
		   toolroot = getenv("TOOLROOT");
		   nlspath = getenv("NLSPATH");
		   if (nlspath==NULL) {
			char *env_file = "/%N.cat";
#ifdef linux
			char *env_path = get_phase_dir(P_f90_fe);
			/* The phase_dir already has the prepended toolroot */
			toolroot = "";
#else
			char *env_path = "/usr/lib/locale/C/LC_MESSAGES";
		      	if (toolroot == NULL) {
				toolroot = "";
		      	}
#endif // linux
			my_putenv("NLSPATH", "%s%s%s", toolroot, env_path, env_file);
		   }
		}
#else
                // Set up NLSPATH, for the Fortran front end.

                nls_path = getenv("NLSPATH");
                env_path = get_phase_dir(P_f90_fe);

                if (nls_path) {
                    my_putenv("NLSPATH", "%s:%s/%%N.cat", nls_path, env_path);
                } else {
                    my_putenv("NLSPATH", "%s/%%N.cat", env_path);
                }
#endif // KEY

		if (uses_message_system && getenv("ORIG_CMD_NAME") == NULL)
		   my_putenv("ORIG_CMD_NAME", "%s", program_name);

		if (phase == P_f90_fe) {
		   char *root;
		   char *modulepath;
		   int len;
		   char *new_env;
		   char *env_name = "FORTRAN_SYSTEM_MODULES=";
		   char *env_val = "/usr/lib/f90modules";
		   root = getenv("TOOLROOT");
		   if (root != NULL) {
		      len = strlen(env_val) + strlen(root) +3 + strlen(env_val);
		      new_env = alloca(len);
		      sprintf(new_env,"%s/%s:%s",root,env_val,env_val);
		      env_val = new_env;
		   }
		   modulepath =  string_copy(getenv("FORTRAN_SYSTEM_MODULES"));
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
		   
		   my_putenv ("FORTRAN_SYSTEM_MODULES", "%s", env_val);
		}
#ifdef linux
		/* need to setenv COMPILER_PATH for collect to find ld */
		my_putenv ("COMPILER_PATH", "%s", get_phase_dir(P_collect));

		/* Tell IPA where to find the driver. */
		my_putenv ("COMPILER_BIN", "%s/" OPEN64_CMPLR_NAME_PREFIX "cc-"
			   OPEN64_VERSION,
			   get_executable_dir());
#endif

		my_execv(name, argv);
	} else {
		/* parent */
		int procid;	/* id of the /proc file */
#if 0 // will be deprecated in next release - SC
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
#endif // if 0 - Deprecated 

		while ((waitpid = wait (&waitstatus)) != forkpid) {
			if (waitpid == -1) {
				error("bad return from wait");
				cleanup();
				do_exit(RC_SYSTEM_ERROR);
				/* NOTREACHED */
			}
		}
#ifndef linux
		(void)sigset (SIGINT, sigint);
		(void)sigset (SIGTERM, sigterm);
#endif
		if (time_flag) print_time(name);
#if 0 // will be deprecated in next release - SC
		if (memory_flag) print_mem(name, num_maps);
#endif

		if (WIFSTOPPED(waitstatus)) {
			termsig = WSTOPSIG(waitstatus);
			error("STOPPED signal received from %s", name);
			cleanup();
			do_exit(RC_SYSTEM_ERROR);
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
			    char *cif_file;
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
				internal_err = TRUE;
				break;
			default:
				internal_err = TRUE;
				break;
			} 
			if (internal_err) {
				if (phase == P_ld || phase == P_ldplus ||
                                    phase == P_gas ||   // bug 4846
                                    phase == P_f_coco ||        // bug 9058
				    phase == P_gcpp || phase == P_gcpp_plus) {
                                        if (phase == P_gas)
                                                internal_error_occurred = 1;
                                        log_error("%s returned non-zero status %d",
                                                  name, status);
					nomsg_error(status);
				} else {
					internal_error("%s returned non-zero status %d",
						       name, status);
				}
			}
			else if (user_err) {
				/* assume phase will print diagnostics */
				if (phase == P_c_gfe || phase == P_cplus_gfe) {
					nomsg_error(RC_INTERNAL_ERROR);
				}
				else if (!show_flag || save_stderr) {
					nomsg_error(RC_USER_ERROR);
				} else {
					error("%s returned non-zero status %d",
						name, status);
				}
			}
			ran_twice = FALSE;
			return;
		} else if(WIFSIGNALED(waitstatus)){
			termsig = WTERMSIG(waitstatus);
                        switch (termsig) {
                        case SIGHUP:
                        case SIGINT:
                        case SIGQUIT:
                        case SIGKILL:
                        case SIGTERM:
                                error("%s died due to signal %d", name, termsig);
                                break;
                        default:
                                internal_error("%s died due to signal %d",
                                               name, termsig);
                                break;
                        }
			if(waitstatus & WCOREFLAG) {
				error("core dumped");
			}
			if (termsig == SIGKILL) {
				error("Probably caused by running out of swap space -- check %s", LOGFILE);
			}
			cleanup();
			do_exit(RC_SYSTEM_ERROR);
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
void
handler (int sig)
{
	error("signal %s caught, stop processing", strsignal(sig));
	cleanup ();
	do_exit (RC_SYSTEM_ERROR);
}

/* set signal handler */
void
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
print_time (char *phase)
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


#if 0 // will be deprecated in next release - SC
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
    do_exit ( RC_SYSTEM_ERROR );
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
		do_exit(RC_SYSTEM_ERROR);
		}
	close(Pipe[1]);
}

static void
print_mem(char *phase, int num_maps)
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

#endif // if 0 - will be deprecated in next release


