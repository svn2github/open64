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
#include <string.h>
#include <malloc.h>
#include <ctype.h>
#include <stdlib.h>
#include <assert.h>
#include "basic.h"
#include "lang_defs.h"
#include "string_utils.h"
#include "errors.h"

#define EMPTY(x)	(x[0] == NIL)
#define SPACE		" 	"
#define DQUOTE		"\""
#define DQUOTE_SPACE	"\" 	"
#define COMMA		","
#define RPAREN		")"
#define FIELD_DIVIDER	'|'
#define OPTIONS 1
#define COMBINATIONS 2

typedef enum {
	normal, 
	oneletter, 		/* single-letter option */
	oneletter_space, 	/* single-letter followed by space and value */
	multiletter_space, 	/* >1 letters followed by space and value */
	complicated,		/* too complicated, parse by hand */
	needs_string,		/* option needs string arg */
	needs_directory,	/* option needs directory arg */
	needs_decimal,		/* option needs decimal arg */
	combo 			/* is combination of options */
} syntax_t; 

#define MAX_OPTION_LENGTH 40
#define MAX_NAME_LENGTH MAX_OPTION_LENGTH
#define MAX_ACTION_LENGTH 256

typedef struct option_list_rec {
	int info_index;		/* index into option_info */
	char name[MAX_OPTION_LENGTH];
	struct option_list_rec *next;
} option_list_t;

typedef struct index_list_rec {
	int info_index;
	boolean negated;
	struct index_list_rec *next;
} index_list_t;

typedef struct opt_info_rec {
	syntax_t syntax;
	int num_letters;	/* for multiletter_space */
	boolean toggle;		/* has toggle action */
	boolean internal;	/* not available to user */
	mask_t languages;
	mask_t phases;
	index_list_t *combo_list;
	option_list_t *implies;
	char name[MAX_OPTION_LENGTH];
	char flag[MAX_OPTION_LENGTH];
	char action[MAX_ACTION_LENGTH];
	string help;
} option_info_t;
#define MAX_OPTIONS 1000
static option_info_t options[MAX_OPTIONS];
static int num_options = 0;

static char implicit_vars[MAX_OPTIONS][MAX_NAME_LENGTH];
static int n_ivars = 0;

/*
 * table_for_phase means we don't need lang and phase masks, nor combos,
 * because only have options for one phase, and can assume they are correct.
 */
static boolean table_for_phase = FALSE;

static const mask_t ALL_LANGS = -1;
static const mask_t ALL_PHASES = -1;
#define UNDEFINED	-1

#define index_last_char(s)	(strlen(s)-1)

static int
find_name(char *s)
{
	int i;
	size_t len;
	for (i = 0; i < num_options; i++) {
		switch(options[i].syntax) {
		case needs_decimal:
			/* must be name followed by digit or %d */
			len = strlen(options[i].name);
			if ((strncmp(s, options[i].name, len) == 0)
			    && (isdigit(s[len]) 
				|| (s[len] == '%' && s[len+1] == 'd')
				|| (s[len] == ' ' && s[len+1] == '%' && s[len+2] == 'd')
				) )
			{
				return i;
			}
			break;
		case needs_string:
		case needs_directory:
			len = strlen(options[i].name);
			if ((strncmp(s, options[i].name, len) == 0)
			    /* isgraph includes underscore and % */
			    && (isgraph(s[len])
				|| (s[len] == ' ' && isgraph(s[len+1])) ) )
			{
				return i;
			}
			break;
		default:
			if (strcmp(s, options[i].name) == 0)
				return i;
			break;
		}
	}
	internal_error("didn't find name %s", s);
	return UNDEFINED;	/* not found */
}

static int
get_line (char *line)
{
	char c;
	char *p = line;
	while (1) {
		c = (char) getchar();
		if (c == (char) EOF) return EOF;
		else if (c == '\n') {
			*p = NIL;
			return 0;
		} else {
			*p = c;
			p++;
		}
	}
}

static syntax_t
set_option_name(char *name, char *s, int *num_letters)
{
	syntax_t f = normal;
	char *pn = name;
	char *ps = s;
	*num_letters = 0;
	while (*ps != NIL) {
		if (*ps == '*') {
			if (*(ps+1) == NIL)
				f = complicated;
			else if (ps == s+2)	/* e.g. -B* */
				f = oneletter_space;
			else {
				f = multiletter_space;
				*num_letters = (ps - s - 1);
			}
		} else if (*ps == '%') {
			switch (*(ps+1)) {
			case 's':
				f = needs_string;
				break;
			case 'd':
			case 'x':
				f = needs_decimal;
				break;
			case 'D':
				f = needs_directory;
				break;
			}
			ps++;
		} else {
			*pn = *ps;
			pn++;
		}
		ps++;
	}
	*pn = NIL;
	return f;
}

/* convert -foo option name into O_foo flag name */
static void
set_flag_name(option_info_t *opt)
{
	char *pn = opt->name;
	char *pf = opt->flag;
	*pf++ = 'O';
	while (*pn != NIL) {
		if (*pn == ' ') pn++;
		if (*pn == '!') pn++;
		if (*pn == '-') *pf = '_';
		else if (*pn == '=') *pf = 'Q';
		else if (*pn == ',') *pf = 'C';
		else if (*pn == ':') *pf = '_';
		else if (*pn == '+') *pf = '_';
		else *pf = *pn;
		pf++;
		pn++;
	}
	switch (opt->syntax) {
	case needs_directory:
	case needs_decimal:
	case complicated:
		/* add trailing __ to distinguish with no-arg case */
		/* use two _ to distinguish from -I- case */
		*pf = '_';
		pf++;
		*pf = '_';
		pf++;
		break;
	}
	*pf = NIL;
}

/* store src into tgt unless src == special */
static void
store_string(char *tgt, char *src, char *special)
{
	char *p;
	if (same_string(src, special)) {
		*tgt = NIL;
	} else if (*src != '{') {
		strcpy(tgt, src);
	} else {
		/* string surrounded by { }, can have white-spaces */
		strcpy(tgt, src);
		strcat(tgt, " ");
		p = strtok(NULL, "}"); 
		strcat(tgt, p);
		strcat(tgt, "}");
	}
}

static option_list_t *
create_option_list (char **sp, int index)
{
	/* have to return current pointer in sp after strtoks */
	char *s = *sp;
	option_list_t *olist;
	option_list_t *olist_head;
	s = strtok(NULL, DQUOTE_SPACE); 
	*sp = s;
	if (s == NULL) {
		return NULL;
	} else if (*s == FIELD_DIVIDER) {
		return NULL;
	} else {
		olist = (option_list_t *) malloc(sizeof(option_list_t)); 
		olist->next = NULL;
		olist_head = olist;
		if (same_string(s, "self")) {
			strcpy(olist->name, options[index].name);
			olist->info_index = index;
		} else {
			strcpy(olist->name, s);
			olist->info_index = UNDEFINED;
		}
	}
	s = strtok(NULL, DQUOTE_SPACE); 
	while (s != NULL && *s != FIELD_DIVIDER) {
		if (s[0] != '-') {
			/* append to previous item, with a space */
			strcat(olist->name, " ");
			strcat(olist->name, s);
		} else {
			olist = (option_list_t *) malloc(sizeof(option_list_t));
			strcpy(olist->name, s);
			olist->info_index = UNDEFINED;
			/* prepend, so in reverse order */
			olist->next = olist_head;
			olist_head = olist;
		}
		s = strtok(NULL, DQUOTE_SPACE); 
	}
	*sp = s;
	return olist_head;
}

static string 
list_to_string (option_list_t *list)
{
	option_list_t *p;
	string buf;
	if (list == NULL) {
		return NULL;
	} else {
		buf = (string) malloc(80);
		strcpy(buf, list->name);
	}
	for (p = list->next; p != NULL; p = p->next) {
		strcat(buf, " ");
		strcat(buf, p->name);
	}
	return buf;
}

static mask_t
create_lang_field (char *s)
{
	char *p;
	mask_t bitfield = 0;
	for (p = s; *p != NIL; p++) {
		if (*p == ',') continue;
		bitfield |= get_language_mask(get_language(*p));
	}
	return bitfield;
}

static mask_t
create_phase_field (char *s)
{
	char *p;
	mask_t bitfield = 0;
	for (p = s; *p != NIL; p++) {
		if (*p == ',') continue;
		bitfield |= get_phase_mask(get_phase(*p));
	}
	return bitfield;
}

static string
create_help_msg (string s)
{
	if (*s != FIELD_DIVIDER) 
		internal_error("| help msg expected: %s", s);
	s = strtok(NULL, DQUOTE);
	if (s != NULL && !isspace(*s)) 
		internal_error("| help msg expected: %s", s);
	s = strtok(NULL, DQUOTE);
	if (s == NULL) return NULL;
	else return string_copy(s);
}

#define INCREMENT_INDEX(i,max)\
	i++;\
	if (i >= max) internal_error("INDEX OVERFLOWED %d", max);

/* String comparison, in *reverse* alphabetical order. 
   Comparison function passed to qsort. */
static int reverse_strcmp(const void* x, const void* y) {
  const char **x1 = x;
  const char **y1 = y;

  return strcmp(*y1, *x1);
}

/* read table from stdin, without assuming options section is sorted. */
static void read_table(void) 
{
	char line[512];
        char *option_lines[MAX_OPTIONS];
        int option_line_count = 0;
	char *p;
	int section = 0;
	int i = num_options;
        int j;

	strcpy(options[i].flag, "O_Unrecognized");
	options[i].internal = TRUE;
	strcpy(options[i].name, "");
	options[i].implies = NULL;
	i++;

        /* Find beginning of OPTIONS section. */
        while (get_line(line) != EOF) {
          if (EMPTY(line))
            continue;
          else if (line[0] == '%' && line[1] != '%') 
            continue;
          else if (same_string(line, "%%% OPTIONS")) {
            section = OPTIONS;
            break;
          }
          else {
            internal_error("Unexpected line: %s", line);
          }
        }

        /* Read and sort the OPTIONS section. */
        if (section != OPTIONS) {
          internal_error("OPTIONS section not found");
        }

        option_line_count = 0;
        while (get_line(line) != EOF) {
            char* s;

	    if (EMPTY(line)) 
              continue;
	    else if (line[0] == '%' && line[1] != '%')
              continue;
	    else if (strncmp(line, "%%% ", 4) == 0) {
              if (same_string(line, "%%% OPTIONS")) 
                internal_error("OPTIONS section seen twice");
              else if (same_string(line, "%%% COMBINATIONS")) {
                section = COMBINATIONS;
                break;
              }
              else {
                internal_error("UNKNOWN SECTION: %s", line);
              }
            }

            s = malloc(strlen(line) + 1);
            if (s == NULL)
              internal_error("memory allocation failed");
            strcpy(s, line);
            option_lines[option_line_count] = s;
            INCREMENT_INDEX(option_line_count, MAX_OPTIONS);
        }
         
        qsort(option_lines, option_line_count, sizeof(char*),
              reverse_strcmp);

        /* Process the option lines */
        for (j = 0; j < option_line_count; ++j) {
          /* <name> <action> <langs> <phases> <implies> */
            p = strtok(option_lines[j], SPACE);
            if (*p == 'I') {
              options[i].internal = TRUE;
              p++;
            } else
              options[i].internal = FALSE;
            if (*p != '-') 
              internal_error("MISSING - : %s", p);
            options[i].syntax = 
              set_option_name(options[i].name, p, &options[i].num_letters);
            if (options[i].syntax == normal 
                && strlen(options[i].name) == 2)
              options[i].syntax = oneletter;
            set_flag_name(&options[i]);
            p = strtok(NULL, SPACE); 
            store_string(options[i].action, p, ";");
            if (strncmp(p, "toggle", 6) == 0)
              options[i].toggle = TRUE;
            else
              options[i].toggle = FALSE;
            if (!table_for_phase) {
              p = strtok(NULL, SPACE); 
              options[i].languages = create_lang_field(p);
              if ( options[i].internal ) {
                options[i].languages |=
                  get_language_mask ( L_internal );
              }
              p = strtok(NULL, SPACE); 
              options[i].phases = create_phase_field(p);
            }
            options[i].implies = create_option_list(&p,i);
            options[i].help = create_help_msg(p);
            INCREMENT_INDEX(i, MAX_OPTIONS);
        }

        /* Read and process the COMBINATIONS section */
        if (section != COMBINATIONS) {
          internal_error("COMBINATIONS section not found");
        }

        while (get_line(line) != EOF) {
	    if (EMPTY(line)) 
              continue;
	    else if (line[0] == '%' && line[1] != '%')
              continue;
	    else if (strncmp(line, "%%% ", 4) == 0) {
              internal_error("Unexpected sections line: %s", line);
            }
            else {
                /* <name> <action> <implies> */
		if (line[0] != '\"')
                        internal_error("MISSING \" : %s", line);
                p = strtok(line+1, DQUOTE);
                set_option_name(options[i].name, p, &options[i].num_letters);
                options[i].syntax = combo;
                set_flag_name(&options[i]);
                p = strtok(NULL, SPACE); 
                store_string(options[i].action, p, "OKAY");
                options[i].implies = create_option_list(&p,i);
                options[i].languages = ALL_LANGS;
                options[i].phases = ALL_PHASES;
                options[i].help = NULL;
                INCREMENT_INDEX(i, MAX_OPTIONS);
            }
        }

        num_options = i;
}

static void
fill_option_info (void)
{
	int i;
	option_list_t *p;
	index_list_t *pc;
	char *s;
	char buffer[MAX_OPTION_LENGTH];
	for (i = 0; i < num_options; i++) {
		p = options[i].implies;
		while (p != NULL) {
		    if (p->info_index == UNDEFINED) {
		    	p->info_index = find_name(p->name);
		    }
		    p = p->next;
		}
		if (options[i].syntax == combo) {
			options[i].combo_list = NULL;
			strcpy(buffer, options[i].name);
			s = strtok(buffer, SPACE);
			while (s != NULL) {
				pc = (index_list_t*) malloc(sizeof(index_list_t));
				if (*s == '!') {
					pc->negated = TRUE;
					s++;
				} else {
					pc->negated = FALSE;
				}
				pc->info_index = find_name(s);
				pc->next = options[i].combo_list;
				options[i].combo_list = pc;
				s = strtok(NULL, SPACE);
			}
		}
	}
}

static void
dump_option_info (void)
{
	int i;
	for (i = 0; i < num_options; i++) {
		if (!EMPTY(options[i].action))
			printf("%s: action: %s\n", options[i].name, 
				options[i].action);
	}
}

static void
add_implicit_var (char *s)
{
	int i;
	for (i = 0; i < n_ivars; i++) {
		if (same_string(s, implicit_vars[i])) {
			/* already in list */
			return;
		}
	}
	strcpy(implicit_vars[n_ivars], s);
	n_ivars++;
}

static FILE *
begin_file (string name)
{
	FILE *f;
	f = fopen(name, "w");
	fprintf(f, "/* THIS FILE IS AUTOMATICALLY GENERATED BY table */\n\n");
	return f;
}

static void
write_option_names (void)
{
	int i;
	char *ivar;
	buffer_t buffer;
	FILE *f;
	f = begin_file("option_names.h");
	for (i = 0; i < num_options; i++) {
		fprintf(f, "#define %s %d\n", options[i].flag, i);
		if (options[i].toggle) {
			/* get var after "toggle(&" */
			strcpy(buffer, ((char*)options[i].action)+8);
			ivar = strtok(buffer,COMMA);
			add_implicit_var(ivar);
		}
	}
	fprintf(f, "#define LAST_PREDEFINED_OPTION %d\n", num_options);
	fprintf(f, "extern int max_options;\n\n");
	for (i = 0; i < n_ivars; i++) {
		fprintf(f, "extern int %s;\n", implicit_vars[i]);
	}
	fclose(f);
}

static void
write_init_options (void)
{
	int i;
	option_list_t *q;
	FILE *f;
	f = begin_file("init_options.i");
	fprintf(f, "#include \"option_names.h\"\n");
	fprintf(f, "#include \"opt_actions.h\"\n\n");
	for (i = 0; i < n_ivars; i++) {
		fprintf(f, "int %s = UNDEFINED;\n", implicit_vars[i]);
	}
	fprintf(f, "\n");
	fprintf(f, "static void\n");
	if (table_for_phase) {
		fprintf(f, "create_option_info (int flag, string name, string help_msg)\n");
		fprintf(f, "{\n");
	} else {
		fprintf(f, "create_option_info (int flag, mask_t lang_mask, mask_t phase_mask, string name, string help_msg)\n");
		fprintf(f, "{\n");
		fprintf(f, "\toptions[flag].valid_langs = lang_mask;\n");
		fprintf(f, "\toptions[flag].valid_phases = phase_mask;\n");
		fprintf(f, "\toptions[flag].combo_list = NULL;\n");
	}
	fprintf(f, "\toptions[flag].implies = NULL;\n");
	fprintf(f, "\toptions[flag].name = string_copy(name);\n");
	fprintf(f, "\toptions[flag].help_msg = string_copy(help_msg);\n");
	fprintf(f, "}\n\n");
	fprintf(f, "static void\n");
	fprintf(f, "create_implies_item (int key, int index, string name)\n");
	fprintf(f, "{\n");
	fprintf(f, "\toption_list_t *p;\n");
	fprintf(f, "\tp = (option_list_t *) malloc(sizeof(option_list_t));\n");
	fprintf(f, "\tp->info_index = index;\n");
	fprintf(f, "\tp->name = string_copy(name);\n");
	fprintf(f, "\tp->next = options[key].implies;\n");
	fprintf(f, "\toptions[key].implies = p;\n");
	fprintf(f, "}\n\n");
	if (!table_for_phase) {
		fprintf(f, "static void\n");
		fprintf(f, "create_combo_item (int key, int index)\n");
		fprintf(f, "{\n");
		fprintf(f, "\tindex_list_t *p;\n");
		fprintf(f, "\tp = (index_list_t *) malloc(sizeof(index_list_t));\n");
		fprintf(f, "\tp->info_index = index;\n");
		fprintf(f, "\tp->next = options[key].combo_list;\n");
		fprintf(f, "\toptions[key].combo_list = p;\n");
		fprintf(f, "}\n\n");
	}
	fprintf(f, "\nextern void\n");
	fprintf(f, "init_options (void)\n");
	fprintf(f, "{\n");
	fprintf(f, "\toptions = (option_info_t *) malloc(max_options*sizeof(option_info_t));\n");

	for (i = 0; i < num_options; i++) {
		if (table_for_phase) {
		    fprintf(f, "\tcreate_option_info(%d,\"%s\",",
			    i, options[i].name);
		} else {
		    if (sizeof(mask_t)>4)
		     {
		     fprintf(f, "\tcreate_option_info(%d,%#llxLL,%#llxLL,\"%s\",",
			    i, options[i].languages, options[i].phases, options[i].name);
		     }
		    else
		     {
		     fprintf(f, "\tcreate_option_info(%d,%#llx,%#llx,\"%s\",",
			    i, options[i].languages, options[i].phases, options[i].name);
		     }
		}
		if (options[i].help == NULL)
			fprintf(f, "NULL);\n");
		else 
			fprintf(f, "\"%s\");\n", options[i].help);
		q = options[i].implies;
		while (q != NULL) {
			/* we write reversed lists back in reverse order,
			 * so now in correct order */
			fprintf(f, "\tcreate_implies_item(%s, %d, \"%s\");\n",
				options[i].flag, q->info_index, q->name);
			q = q->next;
		}
		if (!table_for_phase) {
		    if (options[i].syntax == combo) {
			index_list_t *index_lst = options[i].combo_list;
			while (index_lst != NULL) {
				fprintf(f, "\tcreate_combo_item(%s, %d);\n",
					options[i].flag, index_lst->info_index);
				index_lst = index_lst->next;
			}
		    }
		}
	}
	fprintf(f, "}\n\n");
	fclose(f);
}

static void
write_get_option (void)
{
	int i, j;
	FILE *f;
	f = begin_file("get_option.i");
	fprintf(f, "/* return option index */\n");
	fprintf(f, "extern int\n");
	fprintf(f, "get_option(int *argi, char *argv[])\n");
	fprintf(f, "{\n");
	fprintf(f, "/* don't reset optargs, as may contain needed info */\n");
	fprintf(f, "optargd = 0;\n");
	fprintf(f, "switch (argv[*argi][optindex]) {\n");
	i = 0;
	while (i < num_options) {
		if (options[i].internal || options[i].syntax == combo) {
			/* skip */
			i++;
			continue;
		}
		if (options[i].name[1] == '\0')	/* special case "-" */
			fprintf(f, "case '\\0':\n");
		else
			fprintf(f, "case '%c':\n", options[i].name[1]);
		while (1) {
		    switch (options[i].syntax) {
		    case normal:
		    	fprintf(f, "\tif (same_string(argv[*argi],\"%s\")) {\n",
				options[i].name);
			fprintf(f, "\t\tget_next_arg(argi);\n");
			fprintf(f, "\t\treturn %s;\n", options[i].flag);
			fprintf(f, "\t\t/* NOTREACHED */\n");
			fprintf(f, "\t}\n");
			break;
		    case oneletter:
			fprintf(f, "\tget_next_char(argv, argi);\n");
			fprintf(f, "\treturn %s;\n", options[i].flag);
			fprintf(f, "\t/* NOTREACHED */\n");
			break;
		    case oneletter_space:
		    case multiletter_space:
			if (options[i].syntax == multiletter_space) {
				string temp = string_copy(options[i].name);
				int nil_index = options[i].num_letters+1;
				temp[nil_index] = NIL;
				fprintf(f, "\tif ((strncmp(argv[*argi],\"%s\",%d) == 0)\n",
					temp, nil_index);
				fprintf(f, "\t&& same_string(next_string_after(\"%s\",argv,argi),\"%s\")) {\n",
				    temp, options[i].name+nil_index);
				fprintf(f, "\t\tend_option(argv, argi, %d);\n", nil_index);
			} else {
				fprintf(f, "\tif (same_string(next_string(argv,argi), \"%s\")) {\n",
					options[i].name+2);
			}
			fprintf(f, "\t\toptargs = get_optarg(argv,argi);\n");
			fprintf(f, "\t\tget_next_arg(argi);\n");
			fprintf(f, "\t\treturn %s;\n", options[i].flag);
			fprintf(f, "\t\t/* NOTREACHED */\n");
			fprintf(f, "\t}\n");
			break;
		    case needs_string:
		    case needs_directory:
		    case needs_decimal:
			/* require this to be a separate arg */
			fprintf(f, "\tif (!is_new_arg) break;\n");
			/* for cases where base is > 1 letter,
			 * check that whole string matches */
			if (strlen(options[i].name) > 2) {
				fprintf(f, "\tif (strncmp(argv[*argi],\"%s\",%d) == 0) {\n",
				    options[i].name, strlen(options[i].name));
				fprintf(f, "\t\tend_option(argv, argi, %d);\n",
					strlen(options[i].name));
			} /* else -<single-letter> */
			if (options[i].syntax == needs_decimal) {
				fprintf(f, "\tif (is_decimal(next_string(argv,argi))) {\n");
			} else if (options[i].syntax == needs_directory) {
				fprintf(f, "\tif (is_directory(next_string(argv,argi))) {\n");
			}
			fprintf(f, "\t\toptargs = get_optarg(argv, argi);\n");
			if (options[i].syntax == needs_decimal) {
				fprintf(f, "\t\toptargd = atoi(optargs);\n");
			}
			fprintf(f, "\t\tget_next_arg(argi);\n");
			fprintf(f, "\t\treturn add_string_option(%s,optargs);\n", 
				options[i].flag);
			fprintf(f, "\t\t/* NOTREACHED */\n");
			if (options[i].syntax == needs_directory) {
				fprintf(f, "\t} else if (!is_last_char(argv,argi)) {\n");
				fprintf(f, "\t\tif (fullwarn) {\n");
				fprintf(f, "\t\t\twarning(\"%%s does not refer to a valid directory\", option_name);\n");
				fprintf(f, "\t\t}\n");
				fprintf(f, "\t\toptargs = get_optarg(argv,argi);\n");
				fprintf(f, "\t\tget_next_arg(argi);\n");
				fprintf(f, "\t\treturn add_string_option(%s,optargs);\n", 
					options[i].flag);
				fprintf(f, "\t\t/* NOTREACHED */\n");
			}
			if (options[i].syntax != needs_string) {
				fprintf(f, "\t}\n");
			}
			if (strlen(options[i].name) > 2) {
				fprintf(f, "\t}\n");
			}
			break;
		    case complicated:
			/* for cases where base is > 1 letter,
			 * check that whole string matches */
			if (strlen(options[i].name) > 2) {
				fprintf(f, "\tif (strncmp(argv[*argi],\"%s\",%d) == 0) {\n",
				    options[i].name, strlen(options[i].name));
			}
			fprintf(f, "\t\treturn parse_%s_option(argv, argi);\n",
				options[i].name+1);
			fprintf(f, "\t\t/* NOTREACHED */\n");
			if (strlen(options[i].name) > 2) {
				fprintf(f, "\t}\n");
			}
			break;
		    }
		    if (i+1 < num_options 
			&& options[i+1].name[1] == options[i].name[1])
		    { 
			/* stay within the case stm */
			i++;
		    } else {
			break;	/* goto next case */
		    }
		}
		fprintf(f, "\tbreak;\n");
		i++;
	}
	fprintf(f, "}\n");
	fprintf(f, "optargs = current_string(argv,argi);\n");
	fprintf(f, "get_next_arg(argi);\n");
	fprintf(f, "return O_Unrecognized;\n");
	fprintf(f, "}\n");

	/* now write alias routine */
	fprintf(f, "/* if alias, return real option index */\n");
	fprintf(f, "extern int\n");
	fprintf(f, "get_real_option_if_aliased(int flag)\n");
	fprintf(f, "{\n");
	fprintf(f, "  switch (flag) {\n");
	for (i = 0; i < num_options; i++) {
	    /* alias is option with:
	     * no action, one implies, all langs, no phases.
	     */
	    if (options[i].languages == get_language_mask(L_ALL)
		&& options[i].phases == 0
		&& EMPTY(options[i].action)
		&& options[i].implies != NULL
		&& options[i].implies->next == NULL)
	    {
		j = options[i].implies->info_index;
		if (options[i].syntax == normal
		 || options[i].syntax == oneletter)
		{
			if (options[j].syntax == normal) {
				fprintf(f, "\tcase %s: return %s;\n", 
					options[i].flag, 
					options[j].flag);
			}
			else if (options[j].syntax == needs_string) {
				fprintf(f, "\tcase %s: {\n", options[i].flag);
				fprintf(f, "\t\toptargs = \"%s\";\n",
					options[i].implies->name 
					  + strlen(options[j].name));
				fprintf(f, "\t\treturn add_string_option(%s,optargs);\n",
					options[j].flag);
				fprintf(f, "\t\t}\n");
			}
			else continue;	/* don't know how to handle */
		}
		else if (options[i].syntax == options[j].syntax) {
			/* will catch this on derived case */
			fprintf(f, "\tcase %s: return %s;\n", 
				options[i].flag, 
				options[j].flag);
		}
		else continue;	/* don't know how to handle */
	    }
	}
	fprintf(f, "\tdefault: return flag;\n");
	fprintf(f, "  }\n");
	fprintf(f, "}\n");
	fclose(f);
}

static void
write_opt_action (void)
{
	int i;
	buffer_t buf;
	string tvar;
	string tval;
	FILE *f;
	f = begin_file("opt_action.i");
	fprintf(f, "#include \"string_utils.h\"\n\n");
	fprintf(f, "#include \"get_options.h\"\n\n");
	fprintf(f, "/* do action associated with option */\n");
	fprintf(f, "extern void\n");
	fprintf(f, "opt_action (int optflag)\n");
	fprintf(f, "{\n");
	fprintf(f, "switch (optflag) {\n");
	for (i = 0; i < num_options; i++) {
		if (!options[i].internal && options[i].syntax != combo) {
			if (!EMPTY(options[i].action)) {
				fprintf(f, "case %s:\n", options[i].flag);
				fprintf(f, "\t%s\n", options[i].action);
				fprintf(f, "\tbreak;\n");
			}
		}
	}
	fprintf(f, "}\n");
	fprintf(f, "}\n\n");
	fprintf(f, "/* return whether to mark this flag as unseen */\n");
	fprintf(f, "extern boolean\n");
	fprintf(f, "flag_is_superceded (int optflag)\n");
	fprintf(f, "{\n");
        fprintf(f, "switch (optflag) {\n");
	for (i = 0; i < num_options; i++) {
		if (options[i].toggle) {
			fprintf(f, "case %s:\n", options[i].flag);
			/* get var after "toggle(&" */
			strcpy(buf, options[i].action+8);
			tvar = strtok(buf,COMMA);
			/* get value after "toggle(&<var>," */
			tval = strtok(NULL,RPAREN);
			fprintf(f, "\tif (%s != %s) return TRUE;\n", tvar, tval);
			fprintf(f, "\tbreak;\n");
		}
	}
        fprintf(f, "}\n");
        fprintf(f, "return FALSE;\n");
	fprintf(f, "}\n\n");
	fclose(f);
}

static void
write_check_combos (void)
{
	int i;
	index_list_t *q;
	FILE *f;
	f = fopen("check_combos.c", "w");
	fprintf(f, "/* THIS FILE IS AUTOMATICALLY GENERATED BY table */\n\n");
	fprintf(f, "#include <stddef.h>\n");
	fprintf(f, "#include \"options.h\"\n");
	fprintf(f, "#include \"option_seen.h\"\n");
	fprintf(f, "#include \"option_names.h\"\n");
	fprintf(f, "#include \"opt_actions.h\"\n");
	fprintf(f, "#include \"errors.h\"\n");
	fprintf(f, "\n");
	fprintf(f, "/* replace individual options with combo */\n");
	fprintf(f, "static void\n");
	fprintf(f, "replace_with_combo (int combo_index)\n");
	fprintf(f, "{\n");
	fprintf(f, "\tint flag;\n");
	fprintf(f, "\tint count = 1;\n");
	fprintf(f, "\tFOREACH_OPTION_IN_COMBO(flag,combo_index) {\n");
	fprintf(f, "\t\tif (count == 1) {\n");
	fprintf(f, "\t\t\treplace_option_seen(flag, combo_index);\n");
	fprintf(f, "\t\t} else {\n");
	fprintf(f, "\t\t\tset_option_unseen(flag);\n");
	fprintf(f, "\t\t}\n");
	fprintf(f, "\t\tcount++;\n");
	fprintf(f, "\t}\n");
	fprintf(f, "}\n\n");
	fprintf(f, "static void\n");
	fprintf(f, "report_combo_errors (void)\n");
	fprintf(f, "{\n");
	for (i = 0; i < num_options; i++) {
		if (options[i].syntax == combo && !EMPTY(options[i].action)) {
			fprintf(f, "\tif (option_was_seen(%s)) {\n",
				options[i].flag);
			if (same_string(options[i].action, "WARNING")) {
				fprintf(f, "\t\twarning(\"%s combination not allowed, replaced with %s\");\n",
					options[i].name, list_to_string(options[i].implies));
			} else {
				fprintf(f, "\t\tparse_error(\"%s\", \"illegal combination\");\n",
					options[i].name);
			}
			fprintf(f, "\t}\n");
		}
	}
	fprintf(f, "}\n\n");
	fprintf(f, "extern boolean\n");
	fprintf(f, "is_replacement_combo (int combo_index)\n");
	fprintf(f, "{\n");
	fprintf(f, "\tswitch (combo_index) {\n");
	for (i = 0; i < num_options; i++) {
		if (options[i].syntax == combo && !EMPTY(options[i].action)
			&& same_string(options[i].action, "WARNING") )
		{
			fprintf(f, "\tcase %s:\n", options[i].flag);
		}
	}
	fprintf(f, "\t\treturn TRUE;\n");
	fprintf(f, "\tdefault:\n");
	fprintf(f, "\t\treturn FALSE;\n");
	fprintf(f, "\t}\n");
	fprintf(f, "}\n\n");
	fprintf(f, "extern void\n");
	fprintf(f, "check_for_combos (void)\n");
	fprintf(f, "{\n");
	for (i = 0; i < num_options; i++) {
		if (options[i].syntax == combo) {
			q = options[i].combo_list;
			if (q == NULL) internal_error("empty combo_list?");
			fprintf(f, "\tif (");
			if (q->negated) fprintf(f, "!");
			fprintf(f, "option_was_seen(%s)", 
				options[q->info_index].flag);
			q = q->next;
			while (q != NULL) {
				fprintf(f, " && ");
				if (q->negated) fprintf(f, "!");
				fprintf(f, "option_was_seen(%s)", 
					options[q->info_index].flag);
				q = q->next;
			}
			fprintf(f, ") {\n");
			/* replace in seen array */
			fprintf(f, "\t\treplace_with_combo(%s);\n",
				options[i].flag);
			/* untoggle individual options */
			for (q = options[i].combo_list; q != NULL; q = q->next) {
				if (options[q->info_index].toggle) {
					fprintf(f, "\t\tun%s\n", 
						options[q->info_index].action);
				}
			}
			fprintf(f, "\t}\n");
		}
	}
	fprintf(f, "\treport_combo_errors();\n");
	fprintf(f, "}\n\n");
	fclose(f);
}

static void
write_implicits (void)
{
	int i;
	FILE *f;
	f = fopen("implicits.c", "w");
	fprintf(f, "/* THIS FILE IS AUTOMATICALLY GENERATED BY table */\n\n");
	fprintf(f, "#include \"string_utils.h\"\n\n");
	fprintf(f, "#include \"options.h\"\n");
	fprintf(f, "#include \"option_seen.h\"\n");
	fprintf(f, "#include \"option_names.h\"\n");
	fprintf(f, "#include \"opt_actions.h\"\n");
	fprintf(f, "#include \"get_options.h\"\n\n");
	fprintf(f, "#include \"errors.h\"\n");
	fprintf(f, "extern void\n");
	fprintf(f, "toggle_implicits (void)\n");
	fprintf(f, "{\n");
	for (i = 0; i < num_options; i++) {
		if (options[i].toggle) {
			if (contains_substring(options[i].action, "optarg")) {
				/* don't want to toggle if toggle value is
				 * an optarg that is only valid at parsing */
				continue;
			}
			fprintf(f, "\tif (option_was_implicitly_seen(%s)) {\n",
				options[i].flag);
			fprintf(f, "\t\toption_name = get_option_name(%s);\n",
				options[i].flag);
			fprintf(f, "\t\t%s\n", options[i].action);
			fprintf(f, "\t}\n");
		}
	}
	fprintf(f, "}\n\n");
	fclose(f);
}

extern int
main (int argc, char *argv[])
{
	boolean debug = FALSE;
	program_name = argv[0];
	if (argc == 2 && same_string(argv[1], "-phase")) {
		table_for_phase = TRUE;
	} 
	read_table();
	fill_option_info();
	if (debug) dump_option_info();
	/* create files from info */
	write_option_names();
	write_init_options();
	write_get_option();
	write_opt_action();
	if (!table_for_phase) {
		write_check_combos();
	}
	write_implicits();
	return(error_status);
}
