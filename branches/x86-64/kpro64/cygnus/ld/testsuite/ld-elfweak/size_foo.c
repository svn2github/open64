/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

#pragma weak bar

extern void bar ();

foo ()
{
  bar ();
}
