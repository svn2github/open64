#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "tclReadline.h"

#ifdef _USE_READLINE_

/* Maximum command completion list length macro. */
#define MAX_CMD_LIST_LEN (64)

/* Command completion list. */
const char *cmd_completion_list[MAX_CMD_LIST_LEN];
/* Total command num counter. */
static int cmd_completion_list_index = 0;

int
SL_addToCmdCompletionList(const char *cmd)
{
    int i;
   /* Total command num must not exceed boundry. Why (MAX_CMD_LIST_LEN - 1)
    * because command generator judge list end by the first NULL item. If 
    * judged by the counter, intermediate NULL pointer would cause problem. 
    * If this assert works, you should enlarge the macro MAX_CMD_LIST_LEN.  */ 
    assert(cmd_completion_list_index >= 0 && cmd_completion_list_index < (MAX_CMD_LIST_LEN - 1) );
    if (cmd_completion_list_index == 0) {
	for (i=0; i<MAX_CMD_LIST_LEN; i++) {
	    cmd_completion_list[i] = NULL;
	}
    }
    if (cmd_completion_list_index >= 0 && cmd_completion_list_index < (MAX_CMD_LIST_LEN - 1) )
    {
       /* Add cmd to completion list here. */
    	cmd_completion_list[cmd_completion_list_index] = cmd;
    	cmd_completion_list_index++;
        return 0;
    } else {
       /* If index exceed boundry, return nonzero value. */
	return 1;
    }
}

int
initialize_readline()
{
   /* If completion list is empty, use default filename completion function.
    * else use user defined completion function.			    */
    if(cmd_completion_list[0] == NULL) {
	return 1;
    }
    else {
	rl_attempted_completion_function = SL_command_completion;
        return 0;
    }
}

char **
SL_command_completion (const char *text, int start, int end) 
{
   /* See readline library documentation for more information about this 
    * function.							            */
    char **matches;
    matches = (char **)NULL;
    if (start == 0)
        matches = (char **)rl_completion_matches(text, SL_command_generator);
    return (matches);
}

char *
SL_command_generator (const char *text,int state) 
{
   /* See readline library documentation for more information about this 
    * function.							            */
    static int list_index,len;
    const char *name;
    char *word;
    if (!state) {
	list_index = 0;
        len = strlen(text);
    }
    /* If name is a NULL pointer, there may be segmentation fault error.    */
    while ((name = cmd_completion_list[list_index]) != NULL) {
        list_index++;
        if (strncmp (name, text, len) == 0) {
	    word = (char *)xmalloc (strlen(name) + 1);
            strcpy (word,name);
            return (word);
	}
    }
    return ((char *)NULL);
}
#endif
