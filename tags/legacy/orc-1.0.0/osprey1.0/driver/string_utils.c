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
#include <string.h>
#include <malloc.h>
#include "string_utils.h"

#define BLANK	' '
#define DOT	'.'
#define SLASH	'/'
#define PERCENT	'%'

extern string
string_copy (string s)
{
        string new;
	if (s == NULL) return NULL;
        new = (string) malloc(strlen(s)+1);
        strcpy(new, s);
        return new;
}

/* concatenate two strings */
extern string 
concat_strings (string a, string b)
{
	/* allocate new space, make sure it fits */
	string new = (string) malloc(strlen(a) + strlen(b) + 1);
	strcpy(new, a);
	strcat(new, b);
	return new;
}

/* return suffix of string */
extern string
get_suffix (string s)
{
        string suffix;
        suffix = strrchr (s, DOT);
        if (suffix == NULL) return NULL;
        suffix++;       /* skip the period */
        return suffix;  /* points inside s, not new string! */
}

/* change suffix of string */
/* if no suffix in string, then just return string */
extern string
change_suffix (string s, string suffix)
{
        string new = string_copy(s);
        string p = get_suffix(new);
	if (p == NULL) return s;
	if (strlen(suffix) <= strlen(p)) {
        	/* new suffix is not longer than old suffix */
        	strcpy(p, suffix);
		return new;
	}
	else {
		/* new suffix is longer */
		*p = NIL;
		return concat_strings(new, suffix);
	}
}


/* string has blank space */
extern boolean
has_blank (string s)
{
	string p;
	for (p = s; *p != NIL; p++) {
		if (*p == BLANK) return TRUE;
	}
	return FALSE;
}

/* Replace old_pattern in base string with new_pattern */
/* This modifies the base string in place */
extern void
replace_substring (string base, string old_pattern, string new_pattern)
{
	string p = strstr (base, old_pattern);
	strncpy(p,new_pattern,strlen(old_pattern));
}

/* Expand template with arg.
 * Basically, the arg string replaces the %* string in the template,
 * e.g. -foo%s with bar becomes -foobar.
 * For now, we assume that %* is last thing in template.
 */
extern string
expand_template_string (string template, string arg)
{
        string percent;
	string new = string_copy(template);	/* because we change it */
        percent = strchr (new, PERCENT);
        if (percent == NULL) return new;
	*percent = NIL;
	return concat_strings (new, arg);
}

/* must call this before using a string list */
extern string_list_t *
init_string_list (void)
{
	string_list_t *p;
	p = (string_list_t *) malloc(sizeof(string_list_t));
	p->head = p->tail = NULL; 
	return p; 
}

/* add string that has already been allocated */
static void
add_existing_string (string_list_t *list, string s)
{
	string_item_t *p;
	p = (string_item_t *) malloc(sizeof(string_item_t));
	p->name = s;
	p->next = NULL;
	if (list->head == NULL) {
		list->head = list->tail = p;
	} else {
		list->tail->next = p;
		list->tail = p;
	}
}

/* add string to end of list */
extern void
add_string (string_list_t *list, string s)
{
	/* don't worry about blanks in this version of add_string */
	add_existing_string (list, string_copy(s));
}

/* add each blank-separated string to list */
extern void
add_multi_strings (string_list_t *list, string s)
{
	/* first copy into new string area */
	string new = string_copy(s);
	if (has_blank(new)) {
		string t;
		/* break into multiple strings */
		for (t = new; *t != NIL; t++) {
			if (*t == BLANK) {
				*t = NIL;
				add_existing_string(list, new);
				new = t+1;	/* set to next string */
			}
		}
	}
	add_existing_string (list, new);
}

/* add string to end of list if not already in list */
extern void
add_string_if_new (string_list_t *list, string s)
{
	string_item_t *p;
	for (p = list->head; p != NULL; p = p->next) {
		if (same_string(p->name, s))
			return;		/* already in list */
	}
	/* string not in list */
	add_string (list, s);
}

/* replace old in list with new */
extern void
replace_string (string_list_t *list, string old, string new)
{
	string_item_t *p;
	for (p = list->head; p != NULL; p = p->next) {
		if (same_string(p->name, old)) {
			p->name = string_copy(new);
			return;
		}
	}
	/* string not in list */
}

/* append string list b at end of string list a */
extern void
append_string_lists (string_list_t *a, string_list_t *b)
{
	if (a->head == NULL) {
		/* first list is empty */
		a->head = b->head;
		a->tail = b->tail;
	} else if (b->head == NULL) {
		/* nothing to append */
	} else {
		a->tail->next = b->head;
		a->tail = b->tail;
	}
}

extern void
print_string_list (FILE *f, string_list_t *list)
{
	string_item_t *p;
	for (p = list->head; p != NULL; p = p->next) {
		fprintf(f, "%s ", p->name);
	}
	fprintf(f, "\n");
}

