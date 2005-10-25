/* Part of CPP library.  (include file handling)
   Copyright (C) 1986, 1987, 1989, 1992, 1993, 1994, 1995, 1998,
   1999, 2000 Free Software Foundation, Inc.
   Written by Per Bothner, 1994.
   Based on CCCP program by Paul Rubin, June 1986
   Adapted to ANSI C, Richard Stallman, Jan 1987
   Split out of cpplib.c, Zack Weinberg, Oct 1998

This program is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 2, or (at your option) any
later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */

#include "config.h"
#include "system.h"
#include "hashtab.h"
#include "cpplib.h"
#include "cpphash.h"
#include "intl.h"
#include "mkdeps.h"

#ifdef HAVE_MMAP_FILE
# include <sys/mman.h>
# ifndef MMAP_THRESHOLD
#  define MMAP_THRESHOLD 3 /* Minimum page count to mmap the file.  */
# endif

#else  /* No MMAP_FILE */
#  undef MMAP_THRESHOLD
#  define MMAP_THRESHOLD 0
#endif

static IHASH *redundant_include_p PARAMS ((IHASH *, struct file_name_list *));
static IHASH *make_IHASH	PARAMS ((const char *, const char *,
					 struct file_name_list *,
					 unsigned int, IHASH **));
static struct file_name_map *read_name_map
				PARAMS ((cpp_reader *, const char *));
static char *read_filename_string PARAMS ((int, FILE *));
static char *remap_filename 	PARAMS ((cpp_reader *, char *,
					 struct file_name_list *));
static struct file_name_list *actual_directory
				PARAMS ((cpp_reader *, const char *));
static unsigned int hash_IHASH	PARAMS ((const void *));
static int eq_IHASH		PARAMS ((const void *, const void *));
static int find_include_file	PARAMS ((cpp_reader *, const char *,
					struct file_name_list *,
					IHASH **, int *));
static inline int open_include_file PARAMS ((cpp_reader *, const char *));
static int read_include_file	PARAMS ((cpp_reader *, int, IHASH *));
static ssize_t read_with_read	PARAMS ((cpp_buffer *, int, ssize_t));
static ssize_t read_file	PARAMS ((cpp_buffer *, int, ssize_t));

#if 0
static void hack_vms_include_specification PARAMS ((char *));
#endif

/* Initial size of include hash table.  */
#define IHASHSIZE 50

#ifndef INCLUDE_LEN_FUDGE
#define INCLUDE_LEN_FUDGE 0
#endif

/* Calculate hash of an IHASH entry.  */
static unsigned int
hash_IHASH (x)
     const void *x;
{
  const IHASH *i = (const IHASH *)x;
  return i->hash;
}

/* Compare an existing IHASH structure with a potential one.  */
static int
eq_IHASH (x, y)
     const void *x;
     const void *y;
{
  const char *a = ((const IHASH *)x)->nshort;
  const char *b = ((const IHASH *)y)->nshort;
  return !strcmp (a, b);
}

/* Init the hash table.  In here so it can see the hash and eq functions.  */
void
_cpp_init_include_hash (pfile)
     cpp_reader *pfile;
{
  pfile->all_include_files
    = htab_create (IHASHSIZE, hash_IHASH, eq_IHASH, free);
}

/* Return 0 if the file pointed to by IHASH has never been included before,
         -1 if it has been included before and need not be again,
	 or a pointer to an IHASH entry which is the file to be reread.
   "Never before" is with respect to the position in ILIST.

   This will not detect redundancies involving odd uses of the
   `current directory' rule for "" includes.  They aren't quite
   pathological, but I think they are rare enough not to worry about.
   The simplest example is:

   top.c:
   #include "a/a.h"
   #include "b/b.h"

   a/a.h:
   #include "../b/b.h"

   and the problem is that for `current directory' includes,
   ihash->foundhere is not on any of the global include chains,
   so the test below (i->foundhere == l) may be false even when
   the directories are in fact the same.  */

static IHASH *
redundant_include_p (ihash, ilist)
     IHASH *ihash;
     struct file_name_list *ilist;
{
  struct file_name_list *l;
  IHASH *i;

  if (! ihash->foundhere)
    return 0;

  for (i = ihash; i; i = i->next_this_file)
    for (l = ilist; l; l = l->next)
       if (i->foundhere == l)
	 /* The cmacro works like this: If it's NULL, the file is to
	    be included again.  If it's NEVER_REINCLUDE, the file is
	    never to be included again.  Otherwise it is a macro
	    hashnode, and the file is to be included again if the
	    macro is not defined.  */
	 return (i->cmacro
		 && (i->cmacro == NEVER_REINCLUDE
		     || i->cmacro->type != T_VOID))
	     ? (IHASH *)-1 : i;

  return 0;
}

/* Return 1 if the file named by FNAME has been included before in
   any context, 0 otherwise.  */
int
cpp_included (pfile, fname)
     cpp_reader *pfile;
     const char *fname;
{
  IHASH dummy, *ptr;
  dummy.nshort = fname;
  dummy.hash = _cpp_calc_hash ((const U_CHAR *)fname, strlen (fname));
  ptr = htab_find_with_hash (pfile->all_include_files,
			     (const void *)&dummy, dummy.hash);
  return (ptr != NULL);
}

/* Create an IHASH entry and insert it in SLOT.  */
static IHASH *
make_IHASH (name, fname, path, hash, slot)
     const char *name, *fname;
     struct file_name_list *path;
     unsigned int hash;
     IHASH **slot;
{
  IHASH *ih;
  if (path == ABSOLUTE_PATH)
    {
      ih = (IHASH *) xmalloc (sizeof (IHASH) + strlen (name));
      ih->nshort = ih->name;
    }
  else
    {
      char *s;
      
      if ((s = strstr (name, fname)) != NULL)
	{
	  ih = (IHASH *) xmalloc (sizeof (IHASH) + strlen (name));
	  ih->nshort = ih->name + (s - name);
	}
      else
	{
	  ih = (IHASH *) xmalloc (sizeof (IHASH) + strlen (name)
				  + strlen (fname) + 1);
	  ih->nshort = ih->name + strlen (name) + 1;
	  strcpy ((char *)ih->nshort, fname);
	}
    }
  strcpy ((char *)ih->name, name);
  ih->foundhere = path;
  ih->cmacro = NULL;
  ih->hash = hash;
  ih->next_this_file = *slot;
  *slot = ih;
  return ih;
}

/* Centralize calls to open(2) here.  This provides a hook for future
   changes which might, e.g. look for and open a precompiled version
   of the header.  It also means all the magic currently associated
   with calling open is in one place, and if we ever need more, it'll
   be in one place too.

   We used to open files in nonblocking mode, but that caused more
   problems than it solved.  Do take care not to acquire a controlling
   terminal by mistake (this can't happen on sane systems, but
   paranoia is a virtue).

   Use the three-argument form of open even though we aren't
   specifying O_CREAT, to defend against broken system headers.  */

static inline int
open_include_file (pfile, filename)
     cpp_reader *pfile ATTRIBUTE_UNUSED;
     const char *filename;
{
  return open (filename, O_RDONLY|O_NOCTTY, 0666);
}

/* Search for include file FNAME in the include chain starting at
   SEARCH_START.  Return -2 if this file doesn't need to be included
   (because it was included already and it's marked idempotent),
   -1 if an error occurred, or a file descriptor open on the file.
   *IHASH is set to point to the include hash entry for this file, and
   *BEFORE is set to 1 if the file was included before (but needs to be read
   again). */
static int
find_include_file (pfile, fname, search_start, ihash, before)
     cpp_reader *pfile;
     const char *fname;
     struct file_name_list *search_start;
     IHASH **ihash;
     int *before;
{
  struct file_name_list *path;
  IHASH *ih, **slot;
  IHASH dummy;
  int f;
  char *name;

  dummy.nshort = fname;
  dummy.hash = _cpp_calc_hash ((const U_CHAR *)fname, strlen (fname));
  path = (fname[0] == '/') ? ABSOLUTE_PATH : search_start;
  slot = (IHASH **) htab_find_slot_with_hash (pfile->all_include_files,
					      (const void *) &dummy,
					      dummy.hash, INSERT);

  if (*slot && (ih = redundant_include_p (*slot, path)))
    {
      if (ih == (IHASH *)-1)
	return -2;

      *before = 1;
      *ihash = ih;
      return open_include_file (pfile, ih->name);
    }

  if (path == ABSOLUTE_PATH)
    {
      name = (char *) fname;
      f = open_include_file (pfile, name);
    }
  else
    {
      /* Search directory path, trying to open the file.  */
      name = (char *) alloca (strlen (fname) + pfile->max_include_len
		     + 2 + INCLUDE_LEN_FUDGE);
      do
	{
	  memcpy (name, path->name, path->nlen);
	  name[path->nlen] = '/';
	  strcpy (&name[path->nlen+1], fname);
	  _cpp_simplify_pathname (name);
	  if (CPP_OPTION (pfile, remap))
	    name = remap_filename (pfile, name, path);

	  f = open_include_file (pfile, name);
#ifdef EACCES
	  if (f == -1 && errno == EACCES)
	    {
	      cpp_error (pfile,
			 "included file `%s' exists but is not readable",
			 name);
	      return -1;
	    }
#endif
	  if (f >= 0)
	    break;
	  path = path->next;
	}
      while (path);
    }
  if (f == -1)
    return -1;

  ih = make_IHASH (name, fname, path, dummy.hash, slot);
  *before = 0;
  *ihash = ih;
  return f;
}

/* Create a dummy IHASH entry for FNAME, and return its name pointer.
   This is used by #line.  */
const char *
_cpp_fake_ihash (pfile, fname)
     cpp_reader *pfile;
     const char *fname;
{
  IHASH *ih, **slot;
  IHASH dummy;

  dummy.nshort = fname;
  dummy.hash = _cpp_calc_hash ((const U_CHAR *)fname, strlen (fname));
  slot = (IHASH **) htab_find_slot_with_hash (pfile->all_include_files,
					      (const void *) &dummy,
					      dummy.hash, INSERT);
  if (*slot)
    return (*slot)->name;
  ih = make_IHASH (fname, 0, ABSOLUTE_PATH, dummy.hash, slot);
  return ih->name;
}


/* The file_name_map structure holds a mapping of file names for a
   particular directory.  This mapping is read from the file named
   FILE_NAME_MAP_FILE in that directory.  Such a file can be used to
   map filenames on a file system with severe filename restrictions,
   such as DOS.  The format of the file name map file is just a series
   of lines with two tokens on each line.  The first token is the name
   to map, and the second token is the actual name to use.  */

struct file_name_map
{
  struct file_name_map *map_next;
  char *map_from;
  char *map_to;
};

#define FILE_NAME_MAP_FILE "header.gcc"

/* Read a space delimited string of unlimited length from a stdio
   file.  */

static char *
read_filename_string (ch, f)
     int ch;
     FILE *f;
{
  char *alloc, *set;
  int len;

  len = 20;
  set = alloc = xmalloc (len + 1);
  if (! is_space(ch))
    {
      *set++ = ch;
      while ((ch = getc (f)) != EOF && ! is_space(ch))
	{
	  if (set - alloc == len)
	    {
	      len *= 2;
	      alloc = xrealloc (alloc, len + 1);
	      set = alloc + len / 2;
	    }
	  *set++ = ch;
	}
    }
  *set = '\0';
  ungetc (ch, f);
  return alloc;
}

/* This structure holds a linked list of file name maps, one per directory.  */

struct file_name_map_list
{
  struct file_name_map_list *map_list_next;
  char *map_list_name;
  struct file_name_map *map_list_map;
};

/* Read the file name map file for DIRNAME.  */

static struct file_name_map *
read_name_map (pfile, dirname)
     cpp_reader *pfile;
     const char *dirname;
{
  register struct file_name_map_list *map_list_ptr;
  char *name;
  FILE *f;

  for (map_list_ptr = CPP_OPTION (pfile, map_list); map_list_ptr;
       map_list_ptr = map_list_ptr->map_list_next)
    if (! strcmp (map_list_ptr->map_list_name, dirname))
      return map_list_ptr->map_list_map;

  map_list_ptr = ((struct file_name_map_list *)
		  xmalloc (sizeof (struct file_name_map_list)));
  map_list_ptr->map_list_name = xstrdup (dirname);

  name = (char *) alloca (strlen (dirname) + strlen (FILE_NAME_MAP_FILE) + 2);
  strcpy (name, dirname);
  if (*dirname)
    strcat (name, "/");
  strcat (name, FILE_NAME_MAP_FILE);
  f = fopen (name, "r");
  if (!f)
    map_list_ptr->map_list_map = (struct file_name_map *)-1;
  else
    {
      int ch;
      int dirlen = strlen (dirname);

      while ((ch = getc (f)) != EOF)
	{
	  char *from, *to;
	  struct file_name_map *ptr;

	  if (is_space(ch))
	    continue;
	  from = read_filename_string (ch, f);
	  while ((ch = getc (f)) != EOF && is_hspace(ch))
	    ;
	  to = read_filename_string (ch, f);

	  ptr = ((struct file_name_map *)
		 xmalloc (sizeof (struct file_name_map)));
	  ptr->map_from = from;

	  /* Make the real filename absolute.  */
	  if (*to == '/')
	    ptr->map_to = to;
	  else
	    {
	      ptr->map_to = xmalloc (dirlen + strlen (to) + 2);
	      strcpy (ptr->map_to, dirname);
	      ptr->map_to[dirlen] = '/';
	      strcpy (ptr->map_to + dirlen + 1, to);
	      free (to);
	    }	      

	  ptr->map_next = map_list_ptr->map_list_map;
	  map_list_ptr->map_list_map = ptr;

	  while ((ch = getc (f)) != '\n')
	    if (ch == EOF)
	      break;
	}
      fclose (f);
    }
  
  map_list_ptr->map_list_next = CPP_OPTION (pfile, map_list);
  CPP_OPTION (pfile, map_list) = map_list_ptr;

  return map_list_ptr->map_list_map;
}  

/* Remap NAME based on the file_name_map (if any) for LOC. */

static char *
remap_filename (pfile, name, loc)
     cpp_reader *pfile;
     char *name;
     struct file_name_list *loc;
{
  struct file_name_map *map;
  const char *from, *p, *dir;

  if (! loc->name_map)
    loc->name_map = read_name_map (pfile,
				   loc->name
				   ? loc->name : ".");

  if (loc->name_map == (struct file_name_map *)-1)
    return name;
  
  from = name + strlen (loc->name) + 1;
  
  for (map = loc->name_map; map; map = map->map_next)
    if (!strcmp (map->map_from, from))
      return map->map_to;

  /* Try to find a mapping file for the particular directory we are
     looking in.  Thus #include <sys/types.h> will look up sys/types.h
     in /usr/include/header.gcc and look up types.h in
     /usr/include/sys/header.gcc.  */
  p = strrchr (name, '/');
  if (!p)
    p = name;
  if (loc && loc->name
      && strlen (loc->name) == (size_t) (p - name)
      && !strncmp (loc->name, name, p - name))
    /* FILENAME is in SEARCHPTR, which we've already checked.  */
    return name;

  if (p == name)
    {
      dir = ".";
      from = name;
    }
  else
    {
      char * newdir = (char *) alloca (p - name + 1);
      memcpy (newdir, name, p - name);
      newdir[p - name] = '\0';
      dir = newdir;
      from = p + 1;
    }
  
  for (map = read_name_map (pfile, dir); map; map = map->map_next)
    if (! strcmp (map->map_from, name))
      return map->map_to;

  return name;
}


void
_cpp_execute_include (pfile, f, len, no_reinclude, search_start)
     cpp_reader *pfile;
     U_CHAR *f;
     unsigned int len;
     int no_reinclude;
     struct file_name_list *search_start;
{
  IHASH *ihash;
  char *fname = (char *)f;
  int fd;
  int angle_brackets = fname[0] == '<';
  int before;

  if (!search_start)
    {
      if (angle_brackets)
	search_start = CPP_OPTION (pfile, bracket_include);
      else if (CPP_OPTION (pfile, ignore_srcdir))
	search_start = CPP_OPTION (pfile, quote_include);
      else
	search_start = CPP_BUFFER (pfile)->actual_dir;
    }

  if (!search_start)
    {
      cpp_error (pfile, "No include path in which to find %s", fname);
      return;
    }

  /* Remove quote marks.  */
  fname++;
  len -= 2;
  fname[len] = '\0';

  fd = find_include_file (pfile, fname, search_start, &ihash, &before);

  if (fd == -2)
    return;
  
  if (fd == -1)
    {
      if (CPP_OPTION (pfile, print_deps_missing_files)
	  && CPP_PRINT_DEPS (pfile) > (angle_brackets ||
				       (pfile->system_include_depth > 0)))
        {
	  if (!angle_brackets)
	    deps_add_dep (pfile->deps, fname);
	  else
	    {
	      char *p;
	      struct file_name_list *ptr;
	      /* If requested as a system header, assume it belongs in
		 the first system header directory. */
	      if (CPP_OPTION (pfile, bracket_include))
	        ptr = CPP_OPTION (pfile, bracket_include);
	      else
	        ptr = CPP_OPTION (pfile, quote_include);

	      p = (char *) alloca (strlen (ptr->name)
				   + strlen (fname) + 2);
	      if (*ptr->name != '\0')
	        {
		  strcpy (p, ptr->name);
		  strcat (p, "/");
	        }
	      strcat (p, fname);
	      deps_add_dep (pfile->deps, p);
	    }
	}
      /* If -M was specified, and this header file won't be added to
	 the dependency list, then don't count this as an error,
	 because we can still produce correct output.  Otherwise, we
	 can't produce correct output, because there may be
	 dependencies we need inside the missing file, and we don't
	 know what directory this missing file exists in. */
      else if (CPP_PRINT_DEPS (pfile)
	       && (CPP_PRINT_DEPS (pfile)
		   <= (angle_brackets || (pfile->system_include_depth > 0))))
	cpp_warning (pfile, "No include path in which to find %s", fname);
      else
	cpp_error_from_errno (pfile, fname);

      return;
    }

  /* For -M, add the file to the dependencies on its first inclusion. */
  if (!before && (CPP_PRINT_DEPS (pfile)
		  > (angle_brackets || (pfile->system_include_depth > 0))))
    deps_add_dep (pfile->deps, ihash->name);

  /* Handle -H option.  */
  if (CPP_OPTION (pfile, print_include_names))
    {
      cpp_buffer *fp = CPP_BUFFER (pfile);
      while ((fp = CPP_PREV_BUFFER (fp)) != NULL)
	putc ('.', stderr);
      fprintf (stderr, " %s\n", ihash->name);
    }

  /* Actually process the file.  */
  if (no_reinclude)
    ihash->cmacro = NEVER_REINCLUDE;
  
  if (read_include_file (pfile, fd, ihash))
    {
      if (angle_brackets)
	pfile->system_include_depth++;
    }
}


/* Push an input buffer and load it up with the contents of FNAME.
   If FNAME is "" or NULL, read standard input.  */
int
cpp_read_file (pfile, fname)
     cpp_reader *pfile;
     const char *fname;
{
  IHASH *ih, **slot;
  IHASH dummy;
  int f;

  if (fname == NULL)
    fname = "";

  dummy.nshort = fname;
  /* _cpp_calc_hash doesn't like zero-length strings.  */
  if (*fname == 0)
    dummy.hash = 0;
  else
    dummy.hash = _cpp_calc_hash ((const U_CHAR *)fname, strlen (fname));
  slot = (IHASH **) htab_find_slot_with_hash (pfile->all_include_files,
					      (const void *) &dummy,
					      dummy.hash, INSERT);
  if (*slot && (ih = redundant_include_p (*slot, ABSOLUTE_PATH)))
    {
      if (ih == (IHASH *) -1)
	return 1;  /* Already included.  */
    }
  else
    ih = make_IHASH (fname, 0, ABSOLUTE_PATH, dummy.hash, slot);

  if (*fname == '\0')
    f = 0;
  else
    f = open_include_file (pfile, fname);

  return read_include_file (pfile, f, ih);
}

/* Read the contents of FD into the buffer on the top of PFILE's stack.
   IHASH points to the include hash entry for the file associated with
   FD.

   The caller is responsible for the cpp_push_buffer.  */

static int
read_include_file (pfile, fd, ihash)
     cpp_reader *pfile;
     int fd;
     IHASH *ihash;
{
  struct stat st;
  ssize_t length;
  cpp_buffer *fp;

  fp = cpp_push_buffer (pfile, NULL, 0);

  if (fp == 0)
    goto push_fail;

  if (fstat (fd, &st) < 0)
    goto perror_fail;

  /* If fd points to a plain file, we might be able to mmap it; we can
     definitely allocate the buffer all at once.  If fd is a pipe or
     terminal, we can't do either.  If fd is something weird, like a
     block device or a directory, we don't want to read it at all.

     Unfortunately, different systems use different st.st_mode values
     for pipes: some have S_ISFIFO, some S_ISSOCK, some are buggy and
     zero the entire struct stat except a couple fields.  Hence we don't
     even try to figure out what something is, except for plain files,
     directories, and block devices.  */

  if (S_ISREG (st.st_mode))
    {
      ssize_t st_size;

      /* off_t might have a wider range than ssize_t - in other words,
	 the max size of a file might be bigger than the address
	 space.  We can't handle a file that large.  (Anyone with
	 a single source file bigger than 2GB needs to rethink
	 their coding style.)  */
      if (st.st_size > SSIZE_MAX)
	{
	  cpp_error (pfile, "%s is too large", ihash->name);
	  goto fail;
	}
      st_size = st.st_size;
      length = read_file (fp, fd, st_size);
      if (length == -1)
	goto perror_fail;
      if (length < st_size)
	cpp_warning (pfile, "%s is shorter than expected\n", ihash->name);
    }
  else if (S_ISBLK (st.st_mode))
    {
      cpp_error (pfile, "%s is a block device", ihash->name);
      goto fail;
    }
  else if (S_ISDIR (st.st_mode))
    {
      cpp_error (pfile, "%s is a directory", ihash->name);
      goto fail;
    }
  else
    {
      /* 8 kilobytes is a sensible starting size.  It ought to be
	 bigger than the kernel pipe buffer, and it's definitely
	 bigger than the majority of C source files.  */
      length = read_with_read (fp, fd, 8 * 1024);
      if (length == -1)
	goto perror_fail;
    }

  /* These must be set before prescan.  */
  fp->ihash = ihash;
  fp->nominal_fname = ihash->name;
  
  if (length == 0)
    ihash->cmacro = NEVER_REINCLUDE;
  else
    /* Temporary - I hope.  */
    length = _cpp_prescan (pfile, fp, length);

  fp->rlimit = fp->buf + length;
  fp->cur = fp->buf;
  if (ihash->foundhere != ABSOLUTE_PATH)
    fp->system_header_p = ihash->foundhere->sysp;
  fp->lineno = 1;
  fp->line_base = fp->buf;

  /* The ->actual_dir field is only used when ignore_srcdir is not in effect;
     see do_include */
  if (!CPP_OPTION (pfile, ignore_srcdir))
    fp->actual_dir = actual_directory (pfile, ihash->name);

  pfile->input_stack_listing_current = 0;
  pfile->only_seen_white = 2;
  close (fd);
  return 1;

 perror_fail:
  cpp_error_from_errno (pfile, ihash->name);
 fail:
  cpp_pop_buffer (pfile);
 push_fail:
  close (fd);
  return 0;
}

static ssize_t
read_file (fp, fd, size)
     cpp_buffer *fp;
     int fd;
     ssize_t size;
{
  static int pagesize = -1;

  if (size == 0)
    return 0;

  if (pagesize == -1)
    pagesize = getpagesize ();

#if MMAP_THRESHOLD
  if (size / pagesize >= MMAP_THRESHOLD)
    {
      const U_CHAR *result
	= (const U_CHAR *) mmap (0, size, PROT_READ, MAP_PRIVATE, fd, 0);
      if (result != (const U_CHAR *)-1)
	{
	  fp->buf = result;
	  fp->mapped = 1;
	  return size;
	}
    }
  /* If mmap fails, try read.  If there's really a problem, read will
     fail too.  */
#endif

  return read_with_read (fp, fd, size);
}

static ssize_t
read_with_read (fp, fd, size)
     cpp_buffer *fp;
     int fd;
     ssize_t size;
{
  ssize_t offset, count;
  U_CHAR *buf;

  buf = (U_CHAR *) xmalloc (size);
  offset = 0;
  while ((count = read (fd, buf + offset, size - offset)) > 0)
    {
      offset += count;
      if (offset == size)
	buf = xrealloc (buf, (size *= 2));
    }
  if (count < 0)
    {
      free (buf);
      return -1;
    }
  if (offset == 0)
    {
      free (buf);
      return 0;
    }

  if (offset < size)
    buf = xrealloc (buf, offset);
  fp->buf = buf;
  fp->mapped = 0;
  return offset;
}

/* Given a path FNAME, extract the directory component and place it
   onto the actual_dirs list.  Return a pointer to the allocated
   file_name_list structure.  These structures are used to implement
   current-directory "" include searching. */

static struct file_name_list *
actual_directory (pfile, fname)
     cpp_reader *pfile;
     const char *fname;
{
  char *last_slash, *dir;
  size_t dlen;
  struct file_name_list *x;
  
  dir = xstrdup (fname);
  last_slash = strrchr (dir, '/');
  if (last_slash)
    {
      if (last_slash == dir)
        {
	  dlen = 1;
	  last_slash[1] = '\0';
	}
      else
	{
	  dlen = last_slash - dir;
	  *last_slash = '\0';
	}
    }
  else
    {
      dir[0] = '.';
      dir[1] = '\0';
      dlen = 1;
    }

  if (dlen > pfile->max_include_len)
    pfile->max_include_len = dlen;

  for (x = pfile->actual_dirs; x; x = x->alloc)
    if (!strcmp (x->name, dir))
      {
	free (dir);
	return x;
      }

  /* Not found, make a new one. */
  x = (struct file_name_list *) xmalloc (sizeof (struct file_name_list));
  x->name = dir;
  x->nlen = dlen;
  x->next = CPP_OPTION (pfile, quote_include);
  x->alloc = pfile->actual_dirs;
  x->sysp = CPP_BUFFER (pfile)->system_header_p;
  x->name_map = NULL;

  pfile->actual_dirs = x;
  return x;
}

/* Simplify a path name in place, deleting redundant components.  This
   reduces OS overhead and guarantees that equivalent paths compare
   the same (modulo symlinks).

   Transforms made:
   foo/bar/../quux	foo/quux
   foo/./bar		foo/bar
   foo//bar		foo/bar
   /../quux		/quux
   //quux		//quux  (POSIX allows leading // as a namespace escape)

   Guarantees no trailing slashes. All transforms reduce the length
   of the string.
 */
void
_cpp_simplify_pathname (path)
    char *path;
{
    char *from, *to;
    char *base;
    int absolute = 0;

#if defined (HAVE_DOS_BASED_FILE_SYSTEM)
    /* Convert all backslashes to slashes. */
    for (from = path; *from; from++)
	if (*from == '\\') *from = '/';
    
    /* Skip over leading drive letter if present. */
    if (ISALPHA (path[0]) && path[1] == ':')
	from = to = &path[2];
    else
	from = to = path;
#else
    from = to = path;
#endif
    
    /* Remove redundant initial /s.  */
    if (*from == '/')
    {
	absolute = 1;
	to++;
	from++;
	if (*from == '/')
	{
	    if (*++from == '/')
		/* 3 or more initial /s are equivalent to 1 /.  */
		while (*++from == '/');
	    else
		/* On some hosts // differs from /; Posix allows this.  */
		to++;
	}
    }
    base = to;
    
    for (;;)
    {
	while (*from == '/')
	    from++;

	if (from[0] == '.' && from[1] == '/')
	    from += 2;
	else if (from[0] == '.' && from[1] == '\0')
	    goto done;
	else if (from[0] == '.' && from[1] == '.' && from[2] == '/')
	{
	    if (base == to)
	    {
		if (absolute)
		    from += 3;
		else
		{
		    *to++ = *from++;
		    *to++ = *from++;
		    *to++ = *from++;
		    base = to;
		}
	    }
	    else
	    {
		to -= 2;
		while (to > base && *to != '/') to--;
		if (*to == '/')
		    to++;
		from += 3;
	    }
	}
	else if (from[0] == '.' && from[1] == '.' && from[2] == '\0')
	{
	    if (base == to)
	    {
		if (!absolute)
		{
		    *to++ = *from++;
		    *to++ = *from++;
		}
	    }
	    else
	    {
		to -= 2;
		while (to > base && *to != '/') to--;
		if (*to == '/')
		    to++;
	    }
	    goto done;
	}
	else
	    /* Copy this component and trailing /, if any.  */
	    while ((*to++ = *from++) != '/')
	    {
		if (!to[-1])
		{
		    to--;
		    goto done;
		}
	    }
	
    }
    
 done:
    /* Trim trailing slash */
    if (to[0] == '/' && (!absolute || to > path+1))
	to--;

    /* Change the empty string to "." so that stat() on the result
       will always work. */
    if (to == path)
      *to++ = '.';
    
    *to = '\0';

    return;
}

/* It is not clear when this should be used if at all, so I've
   disabled it until someone who understands VMS can look at it. */
#if 0

/* Under VMS we need to fix up the "include" specification filename.

   Rules for possible conversions

	fullname		tried paths

	name			name
	./dir/name		[.dir]name
	/dir/name		dir:name
	/name			[000000]name, name
	dir/name		dir:[000000]name, dir:name, dir/name
	dir1/dir2/name		dir1:[dir2]name, dir1:[000000.dir2]name
	path:/name		path:[000000]name, path:name
	path:/dir/name		path:[000000.dir]name, path:[dir]name
	path:dir/name		path:[dir]name
	[path]:[dir]name	[path.dir]name
	path/[dir]name		[path.dir]name

   The path:/name input is constructed when expanding <> includes. */


static void
hack_vms_include_specification (fullname)
     char *fullname;
{
  register char *basename, *unixname, *local_ptr, *first_slash;
  int f, check_filename_before_returning, must_revert;
  char Local[512];

  check_filename_before_returning = 0;
  must_revert = 0;
  /* See if we can find a 1st slash. If not, there's no path information.  */
  first_slash = strchr (fullname, '/');
  if (first_slash == 0)
    return 0;				/* Nothing to do!!! */

  /* construct device spec if none given.  */

  if (strchr (fullname, ':') == 0)
    {

      /* If fullname has a slash, take it as device spec.  */

      if (first_slash == fullname)
	{
	  first_slash = strchr (fullname + 1, '/');	/* 2nd slash ? */
	  if (first_slash)
	    *first_slash = ':';				/* make device spec  */
	  for (basename = fullname; *basename != 0; basename++)
	    *basename = *(basename+1);			/* remove leading slash  */
	}
      else if ((first_slash[-1] != '.')		/* keep ':/', './' */
	    && (first_slash[-1] != ':')
	    && (first_slash[-1] != ']'))	/* or a vms path  */
	{
	  *first_slash = ':';
	}
      else if ((first_slash[1] == '[')		/* skip './' in './[dir'  */
	    && (first_slash[-1] == '.'))
	fullname += 2;
    }

  /* Get part after first ':' (basename[-1] == ':')
     or last '/' (basename[-1] == '/').  */

  basename = base_name (fullname);

  local_ptr = Local;			/* initialize */

  /* We are trying to do a number of things here.  First of all, we are
     trying to hammer the filenames into a standard format, such that later
     processing can handle them.
     
     If the file name contains something like [dir.], then it recognizes this
     as a root, and strips the ".]".  Later processing will add whatever is
     needed to get things working properly.
     
     If no device is specified, then the first directory name is taken to be
     a device name (or a rooted logical).  */

  /* Point to the UNIX filename part (which needs to be fixed!)
     but skip vms path information.
     [basename != fullname since first_slash != 0].  */

  if ((basename[-1] == ':')		/* vms path spec.  */
      || (basename[-1] == ']')
      || (basename[-1] == '>'))
    unixname = basename;
  else
    unixname = fullname;

  if (*unixname == '/')
    unixname++;

  /* If the directory spec is not rooted, we can just copy
     the UNIX filename part and we are done.  */

  if (((basename - fullname) > 1)
     && (  (basename[-1] == ']')
        || (basename[-1] == '>')))
    {
      if (basename[-2] != '.')
	{

	/* The VMS part ends in a `]', and the preceding character is not a `.'.
	   -> PATH]:/name (basename = '/name', unixname = 'name')
	   We strip the `]', and then splice the two parts of the name in the
	   usual way.  Given the default locations for include files,
	   we will only use this code if the user specifies alternate locations
	   with the /include (-I) switch on the command line.  */

	  basename -= 1;	/* Strip "]" */
	  unixname--;		/* backspace */
	}
      else
	{

	/* The VMS part has a ".]" at the end, and this will not do.  Later
	   processing will add a second directory spec, and this would be a syntax
	   error.  Thus we strip the ".]", and thus merge the directory specs.
	   We also backspace unixname, so that it points to a '/'.  This inhibits the
	   generation of the 000000 root directory spec (which does not belong here
	   in this case).  */

	  basename -= 2;	/* Strip ".]" */
	  unixname--;		/* backspace */
	}
    }

  else

    {

      /* We drop in here if there is no VMS style directory specification yet.
         If there is no device specification either, we make the first dir a
         device and try that.  If we do not do this, then we will be essentially
         searching the users default directory (as if they did a #include "asdf.h").
        
         Then all we need to do is to push a '[' into the output string. Later
         processing will fill this in, and close the bracket.  */

      if ((unixname != fullname)	/* vms path spec found.  */
	 && (basename[-1] != ':'))
	*local_ptr++ = ':';		/* dev not in spec.  take first dir */

      *local_ptr++ = '[';		/* Open the directory specification */
    }

    if (unixname == fullname)		/* no vms dir spec.  */
      {
	must_revert = 1;
	if ((first_slash != 0)		/* unix dir spec.  */
	    && (*unixname != '/')	/* not beginning with '/'  */
	    && (*unixname != '.'))	/* or './' or '../'  */
	  *local_ptr++ = '.';		/* dir is local !  */
      }

  /* at this point we assume that we have the device spec, and (at least
     the opening "[" for a directory specification.  We may have directories
     specified already.

     If there are no other slashes then the filename will be
     in the "root" directory.  Otherwise, we need to add
     directory specifications.  */

  if (strchr (unixname, '/') == 0)
    {
      /* if no directories specified yet and none are following.  */
      if (local_ptr[-1] == '[')
	{
	  /* Just add "000000]" as the directory string */
	  strcpy (local_ptr, "000000]");
	  local_ptr += strlen (local_ptr);
	  check_filename_before_returning = 1; /* we might need to fool with this later */
	}
    }
  else
    {

      /* As long as there are still subdirectories to add, do them.  */
      while (strchr (unixname, '/') != 0)
	{
	  /* If this token is "." we can ignore it
	       if it's not at the beginning of a path.  */
	  if ((unixname[0] == '.') && (unixname[1] == '/'))
	    {
	      /* remove it at beginning of path.  */
	      if (  ((unixname == fullname)		/* no device spec  */
		    && (fullname+2 != basename))	/* starts with ./ */
							/* or  */
		 || ((basename[-1] == ':')		/* device spec  */
		    && (unixname-1 == basename)))	/* and ./ afterwards  */
		*local_ptr++ = '.';		 	/* make '[.' start of path.  */
	      unixname += 2;
	      continue;
	    }

	  /* Add a subdirectory spec. Do not duplicate "." */
	  if (  local_ptr[-1] != '.'
	     && local_ptr[-1] != '['
	     && local_ptr[-1] != '<')
	    *local_ptr++ = '.';

	  /* If this is ".." then the spec becomes "-" */
	  if (  (unixname[0] == '.')
	     && (unixname[1] == '.')
	     && (unixname[2] == '/'))
	    {
	      /* Add "-" and skip the ".." */
	      if ((local_ptr[-1] == '.')
		  && (local_ptr[-2] == '['))
		local_ptr--;			/* prevent [.-  */
	      *local_ptr++ = '-';
	      unixname += 3;
	      continue;
	    }

	  /* Copy the subdirectory */
	  while (*unixname != '/')
	    *local_ptr++= *unixname++;

	  unixname++;			/* Skip the "/" */
	}

      /* Close the directory specification */
      if (local_ptr[-1] == '.')		/* no trailing periods */
	local_ptr--;

      if (local_ptr[-1] == '[')		/* no dir needed */
	local_ptr--;
      else
	*local_ptr++ = ']';
    }

  /* Now add the filename.  */

  while (*unixname)
    *local_ptr++ = *unixname++;
  *local_ptr = 0;

  /* Now append it to the original VMS spec.  */

  strcpy ((must_revert==1)?fullname:basename, Local);

  /* If we put a [000000] in the filename, try to open it first. If this fails,
     remove the [000000], and return that name.  This provides flexibility
     to the user in that they can use both rooted and non-rooted logical names
     to point to the location of the file.  */

  if (check_filename_before_returning)
    {
      f = open (fullname, O_RDONLY|O_NONBLOCK);
      if (f >= 0)
	{
	  /* The file name is OK as it is, so return it as is.  */
	  close (f);
	  return 1;
	}

      /* The filename did not work.  Try to remove the [000000] from the name,
	 and return it.  */

      basename = strchr (fullname, '[');
      local_ptr = strchr (fullname, ']') + 1;
      strcpy (basename, local_ptr);		/* this gets rid of it */

    }

  return 1;
}
#endif	/* VMS */
