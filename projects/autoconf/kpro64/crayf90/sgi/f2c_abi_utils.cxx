/*
 * Copyright 2004 PathScale, Inc.  All Rights Reserved.
 */

/*
  Copyright (C) 2000-2003, Intel Corporation
  All rights reserved.

  Redistribution and use in source and binary forms, with or without modification,
  are permitted provided that the following conditions are met:

  Redistributions of source code must retain the above copyright notice, this list
  of conditions and the following disclaimer.

  Redistributions in binary form must reproduce the above copyright notice, this list
  of conditions and the following disclaimer in the documentation and/or other materials
  provided with the distribution.

  Neither the name of the owner nor the names of its contributors may be used to endorse or
  promote products derived from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
  IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
  FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
  BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/          

#include <defs.h>
#include <iostream>
#include <fstream>
#include <string.h>
#include <ext/hash_map>
#include <stdlib.h>

#include "mempool.h"
#include "cxx_memory.h"
#include "errors.h"
#include "f2c_abi_utils.h"

static CALLEE_HTABLE spec_table;
static BOOL script_init = FALSE;
extern MEM_POOL *FE_Mempool;
using namespace std;

static void Make_Mangled_Name(char *dst, char *src)
{
  char *ptr;
  int underscores;

  bzero (dst, sizeof(char)*strlen(dst));
  underscores = 1;
  for (ptr = src; ptr && *ptr && *ptr != ' ' ; ptr++){
    *dst++ = towlower(*ptr) ;
    if (*ptr == '_')
      underscores++;
  }
  while (underscores--)
    *dst ++ = '_';
  *dst = '\0';
}

//--------------------------------------------------------
// NAME: Parse_inline_script
// FUNCTION: Parse the context sensitive inlining specification file.
//           The inlining records are stored in the two-level hash-map
//           defined in "inline_script_parser.h"
//--------------------------------------------------------
static void Parse_script(const char *script_name)
{
  // Assumption: the maximum line length should not exceed 1024 bytes
  char line_buffer[1024], *line_iterator;
  ifstream infile; 
  char *callee_func;
  char callee_key[1024], *key_temp;
  static int count = 1;

  infile.open(script_name, ifstream::in);

  strcpy(callee_key, "");
  FmtAssert((infile.good()), ("Ff2c abi script parsing error: can't open the ff2c abi description file"));

  // Read in the file line by line,
  // Perform syntax analysis based on the keywords of call-site type specification
  while (infile.good()) {
    infile.getline(line_buffer, 1024);
    line_iterator = line_buffer;

    // Filter out the blank-space in line header
    while (*line_iterator == ' ')
      line_iterator++;
    callee_func = strtok(line_iterator, " ");
    if (!callee_func)
      continue;
    Make_Mangled_Name(callee_key, callee_func);
//    strcpy(callee_key, callee_func);
    key_temp = TYPE_MEM_POOL_ALLOC_N(char, FE_Mempool, sizeof(char)*(strlen(callee_key)+1));
    strcpy(key_temp, callee_key);
    spec_table[key_temp] = count++;
  } 
  infile.close();
}

//--------------------------------------------------------
// NAME: Check_Inline_Script
// FUNCTION: The interface function for inquiry into the inlining record
//--------------------------------------------------------
extern char *F2C_ABI_filename;
extern "C" int Check_FF2C_Script(char *callee_key, int mangled)
{
  char name_string[1024];
  char *name_ptr;

  if (!F2C_ABI_filename) 
    return FALSE;
  // If being queired for the first time, parse the inline script file, and set up inlining record
  if (script_init == FALSE) {
    Parse_script (F2C_ABI_filename);
    script_init = TRUE;
  }

  if (!mangled){
    Make_Mangled_Name(name_string, callee_key);
    name_ptr = name_string;
  }
  else
    name_ptr = callee_key;

  // Check if the hash map contains the element being inquired
  if (spec_table.find(name_ptr) == spec_table.end()) 
    return FALSE;
  return TRUE;
}
