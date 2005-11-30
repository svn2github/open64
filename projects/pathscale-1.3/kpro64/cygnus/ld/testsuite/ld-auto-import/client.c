/*
 * Copyright 2003, 2004 PathScale, Inc.  All Rights Reserved.
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of version 2 of the GNU General Public License as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it would be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
 *
 * Further, this software is distributed without any warranty that it is
 * free of the rightful claim of any third person regarding infringement 
 * or the like.  Any license provided herein, whether implied or 
 * otherwise, applies only to this software file.  Patent licenses, if 
 * any, provided herein do not apply to combinations of this program with 
 * other software, or any other product whatsoever.  
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write the Free Software Foundation, Inc., 59
 * Temple Place - Suite 330, Boston MA 02111-1307, USA.
 */

#include <stdio.h>

extern int var;
extern void (*func_ptr)(void);
extern void print_var (void);
extern void print_foo (void);
extern int foo;
extern int var2[2];

typedef struct
{
  int *   var;
  void (* func_ptr)(void);
}
TEST;

TEST xyz = { &var, print_var };

int
main (void)
{
  print_var ();

  printf ("We see var = %d\n", var);
  printf ("Setting var = 456\n");

  var = 456;

  print_var ();
  printf ("We see var = %d\n\n", var);

  var = 90;
  print_var ();
  printf ("We see var = %d\n\n", var);

  print_foo ();
  printf ("We see foo = %d\n", foo);
  printf ("Setting foo = 19\n");
  foo = 19;
  print_foo ();
  printf ("We see foo = %d\n\n", foo);
  fflush (stdout);

  printf ("Calling dllimported function pointer\n");
  func_ptr ();

  printf ("Calling functions using global structure\n"); 
  xyz.func_ptr ();
  * xyz.var = 40;
  xyz.func_ptr ();

  printf ("We see var2[0] = %d\n\n", var2[0]);

  return 0;
}
