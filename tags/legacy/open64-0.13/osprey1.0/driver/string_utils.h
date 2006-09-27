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


#ifndef STRING_UTILS_H
#define STRING_UTILS_H

#include <stdio.h>
#include <string.h>
#include "basic.h"

/* copy string and allocate memory for it */
extern string string_copy (string s);

/* concatenate two strings */
extern string concat_strings (string a, string b);

/* return suffix of string */
extern string get_suffix (string s);

/* change suffix of string */
extern string change_suffix (string s, string suffix);

/* string has blank space */
extern boolean has_blank (string s);

/* Expand template with arg.
 * Basically, the arg string replaces the %* string in the template,
 * e.g. -foo%s with bar becomes -foobar.
 */
extern string expand_template_string (string template, string arg);

/* return true if strings are identical */
#define same_string(x,y)	(strcmp(x,y) == 0)
#define same_string_prefix(x,y)	(strncmp(x,y,strlen(y)) == 0)

/* return true if sub string is contained in s string */
#define contains_substring(s,sub)	(strstr(s,sub) != NULL)

/* Replace old_pattern in base string with new_pattern */
/* This modifies the base string in place */
extern void replace_substring (string base, string old_pattern, string new_pattern);

#define string_length(s)	strlen(s)


/* linked list of strings */
typedef struct string_item_rec {
	string name;
	struct string_item_rec *next;
} string_item_t;
typedef struct string_list_rec {
	string_item_t *head;
	string_item_t *tail;
} string_list_t;

/* must call this before using a string list */
extern string_list_t * init_string_list (void);

/* add string to end of list */
extern void add_string (string_list_t *list, string s);
/* add each blank-separated substring to end of list */
extern void add_multi_strings (string_list_t *list, string s);

/* add string to end of list if not already in list */
extern void add_string_if_new (string_list_t *list, string s);

/* replace old in list with new */
extern void replace_string (string_list_t *list, string old, string new);

/* append string list b at end of string list a */
extern void append_string_lists (string_list_t *a, string_list_t *b);

/* print the list */
extern void print_string_list (FILE *f, string_list_t *list);

/* iterator */
#define FOREACH_STRING(p,list)	\
	for (p = list->head; p != NULL; p = p->next)
#define STRING_NAME(p)	(p->name)

#endif
