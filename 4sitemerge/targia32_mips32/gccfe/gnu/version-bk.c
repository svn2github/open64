#define BK_CSET_REV ""
#include "ansidecl.h"
#include "version.h"

/* This is the string reported as the version number by all components
   of the compiler.  If you distribute a modified version of GCC,
   please modify this string to indicate that, e.g. by putting your
   organization's name in parentheses at the end of the string.  */

const char version_string[] = "3.3.1 20030915  (PathScale " BK_CSET_REV ")";

/* This is the location of the online document giving instructions for
   reporting bugs.  If you distribute a modified version of GCC,
   please change this to refer to a document giving instructions for
   reporting bugs to you, not us.  (You are of course welcome to
   forward us bugs reported to you, if you determine that they are
   not bugs in your modifications.)  */

const char bug_report_url[] = "<URL:http://www.pathscale.com/support>";

const char *const cset_rev = "unknown";
const char *const cset_key = BK_CSET_REV;
const char *const build_root = "unknown";
const char *const build_host = "pd00";
const char *const build_user = "ltuo";
const char *const build_date = "2006-08-02 12:20:53 +0800";
