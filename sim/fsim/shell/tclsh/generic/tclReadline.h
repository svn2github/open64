#ifndef _TCLREADLINE_H_
#define _TCLREADLINE_H_

#define _USE_READLINE_ 1
#ifdef _USE_READLINE_

extern char *history_file;

#include <readline/readline.h>
#include <readline/history.h>

/* in readline.h */
extern char *readline(const char *prompt);
extern char **rl_completion_matches(const char *, rl_compentry_func_t *);
extern rl_completion_func_t *rl_attempted_completion_function;

extern char *xmalloc ();

/* add command name to command completion list */
int SL_addToCmdCompletionList(const char *);

/* initialize readline */
int initialize_readline();

/* user defined command completion function*/
char **SL_command_completion(const char *, int, int);

/* function to find command in completion list*/
char *SL_command_generator(const char *, int);

#endif /* end of _USE_READLINE_ */ 

#endif /* end of _TCLREADLINE_H_ */
