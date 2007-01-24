#define HG_CSET_ID ""
/*
 * Copyright 2003, 2004, 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

#include "ansidecl.h"
#include "version.h"

/* This is the string reported as the version number by all components
   of the compiler.  If you distribute a modified version of GCC,
   please modify this string to indicate that, e.g. by putting your
   organization's name in parentheses at the end of the string.  */

const char version_string[] = "3.3.1 20030915  (PathScale " HG_CSET_ID ")";

/* This is the location of the online document giving instructions for
   reporting bugs.  If you distribute a modified version of GCC,
   please change this to refer to a document giving instructions for
   reporting bugs to you, not us.  (You are of course welcome to
   forward us bugs reported to you, if you determine that they are
   not bugs in your modifications.)  */

#ifdef KEY
const char bug_report_url[] = "<URL:http://www.pathscale.com/support.html>";
#else
const char bug_report_url[] = "<URL:http://www.pathscale.com/support>";
#endif

const char *const cset_id = HG_CSET_ID;
const char *const build_root = "unknown";
const char *const build_host = "yhd-debian";
const char *const build_user = "llj";
const char *const build_date = "2007-01-18 23:21:35 +0000";
