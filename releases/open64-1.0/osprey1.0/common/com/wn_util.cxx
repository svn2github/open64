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


/**-------------------------------------------------------------------
***
***            WN utility routines                             
***
***-------------------------------------------------------------------*/

/** $Revision: 1.1.1.1 $
*** $Date: 2005/10/21 19:00:00 $
*** $Author: marcel $
*** $Source: /proj/osprey/CVS/open64/osprey1.0/common/com/wn_util.cxx,v $
**/
#ifdef USE_PCH
#include "common_com_pch.h"
#endif /* USE_PCH */
#pragma hdrstop
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <bstring.h>	/* has bcopy */
#include "defs.h"
#include "stab.h"
#include "wn.h"
#include "wn_simp.h"	/* needed to enable simplifier */
#include "opcode.h"
#include "wn_util.h"
#include "ir_reader.h" 

#ifdef BACK_END
#include "region_util.h"
#endif
/*-------------------------------------------------------------*/
/* initialize the stack, it contains tree nodes                */
/*-------------------------------------------------------------*/
static WN_STACK *
WN_InitStack (void)
{ 
    WN_STACK *wns;
    wns = (WN_STACK *) MEM_POOL_Alloc (Malloc_Mem_Pool, sizeof(WN_STACK));

    /* note, must be a power of two since fast shift operations are used */
    /* in push operation */
    WN_STACK_size(wns) = 128;
    WN_STACK_stack(wns) = (WN **) MEM_POOL_Alloc (Malloc_Mem_Pool,
						  sizeof(WN *) * 128);

    WN_STACK_sp(wns) = WN_STACK_stack(wns);
    return wns;
}

/*-------------------------------------------------------------*/
/* pop an element                                              */
/*-------------------------------------------------------------*/
inline WN *
WN_Pop (WN_STACK *wns)
{ 
    if (WN_STACK_sp(wns) == WN_STACK_stack(wns))
	return NULL;
    else
	return *(--WN_STACK_sp(wns));
}

/*-------------------------------------------------------------*/
/* push an element                                             */
/*-------------------------------------------------------------*/
inline void
WN_Push (WN* wn, WN_STACK *wns)
{
    *(WN_STACK_sp(wns)++) = wn;
    if ((WN_STACK_sp(wns) - WN_STACK_stack(wns)) == WN_STACK_size(wns)) {
	/* Ran out of stack-space, so double the size of the stack */
	INT size = WN_STACK_size(wns) * sizeof(WN *);
	WN_STACK_stack(wns) = (WN **)
	    MEM_POOL_Realloc (Malloc_Mem_Pool, WN_STACK_stack(wns),
			      size, size * 2);
	WN_STACK_sp(wns) = WN_STACK_stack(wns) + WN_STACK_size(wns);
	WN_STACK_size(wns) *= 2;
    }
}

/*-------------------------------------------------------------*/
/* free the stack                                              */
/*-------------------------------------------------------------*/
static void
WN_FreeStack (WN_STACK *wns)
{
    MEM_POOL_FREE (Malloc_Mem_Pool, WN_STACK_stack(wns));
    MEM_POOL_FREE (Malloc_Mem_Pool, wns);
}

/*-------------------------------------------------------------*/
/* walk the tree wn                                            */
/* initialize the tree iterator                                */
/*-------------------------------------------------------------*/
extern WN_ITER* WN_WALK_TreeIter(WN *wn)
{
 WN_ITER *wni; 

 FmtAssert(wn != 0, ("Bad tree node"));
 FmtAssert(WN_operator(wn) >= OPERATOR_FIRST &&
           WN_operator(wn) <= OPERATOR_LAST,
           ("Bad OPERATOR %d", WN_operator(wn)));

 wni = (WN_ITER*) malloc(sizeof(WN_ITER));
 WN_ITER_wn(wni) = wn;
 WN_ITER_stack(wni) = WN_InitStack();

 return wni;
}

/*-------------------------------------------------------------*/
/* initialize the structured control flow node iterator        */
/*-------------------------------------------------------------*/
extern WN_ITER* WN_WALK_SCFIter(WN *wn)
{
 WN_ITER *wni; 

 FmtAssert(wn != 0, ("Bad tree node"));
 FmtAssert(WN_operator(wn) >= OPERATOR_FIRST &&
           WN_operator(wn) <= OPERATOR_LAST,
           ("Bad OPERATOR %d", WN_operator(wn)));
 FmtAssert(OPCODE_is_scf(WN_opcode(wn)), ("Expecting a Structured Control Flow tree node"));

 wni = (WN_ITER*) malloc(sizeof(WN_ITER));
 WN_ITER_wn(wni) = wn;
 WN_ITER_stack(wni) = WN_InitStack();

 return wni;
}

/*-------------------------------------------------------------*/
/* walk the statements in the tree node wn                     */
/* initialize the statement iterator                           */
/*-------------------------------------------------------------*/
extern WN_ITER* WN_WALK_StmtIter(WN *wn)
{
 WN_ITER *wni;

 FmtAssert(wn != 0, ("Bad tree node"));
 FmtAssert(WN_operator(wn) >= OPERATOR_FIRST &&
           WN_operator(wn) <= OPERATOR_LAST,
           ("Bad OPERATOR %d", WN_operator(wn)));

/* walk statements is a valid operation only for scf and
   statment tree nodes
*/
 if (OPCODE_is_scf(WN_opcode(wn)) || OPCODE_is_stmt(WN_opcode(wn)))
   {
   wni = (WN_ITER*) malloc(sizeof(WN_ITER));
   WN_ITER_wn(wni) = wn;
   WN_ITER_stack(wni) = WN_InitStack();
   return wni;
   }

 return 0;  /* opcode is not a valid one */

}


/*-------------------------------------------------------------*/
/* return the next tree node                                   */
/*-------------------------------------------------------------*/
extern WN_ITER *
WN_WALK_TreeNext(WN_ITER *wni)
{
    INT i;
    WN *wn1;

    /* wn may be null if the user has deleted a particular node
       while walking the tree, in that case it must also set
       the current node in the iterator as NULL
       */

    if (WN_ITER_wn(wni) != NULL) {
	/* handle a BLOCK */
	if (WN_operator(WN_ITER_wn(wni)) == OPR_BLOCK) {
	    wn1 = WN_last(WN_ITER_wn(wni));
	    while (wn1) {
		WN_Push(wn1, WN_ITER_stack(wni));
		wn1 = WN_prev(wn1);
	    }
	} else { 
	    /* the rest are handled by simply pushing their kids on the stack */
	    for (i= WN_kid_count(WN_ITER_wn(wni))-1; i >= 0; --i) {
		if (WN_kid(WN_ITER_wn(wni), i) != NULL)
		    WN_Push(WN_kid(WN_ITER_wn(wni), i), WN_ITER_stack(wni)); 
	    }
	}
    }
    if ((WN_ITER_wn(wni) = WN_Pop(WN_ITER_stack(wni))) == NULL) {
	WN_FreeStack(WN_ITER_stack(wni));
	free(wni);
	return NULL;
    }
 
    return wni;
}

/*-------------------------------------------------------------*/
/* return the next statement node                              */
/*-------------------------------------------------------------*/
extern WN_ITER *WN_WALK_StmtNext(WN_ITER *wni)
{
 INT i;
 WN *wn1;

/* WN may be null if the user has deleted a particular node
   while walking the tree, in that case it must also set
   the current node in the iterator as NULL
*/

 if (WN_ITER_wn(wni) != NULL)
   {

   /* handle a BLOCK */
   if (WN_operator(WN_ITER_wn(wni)) == OPR_BLOCK)
     {
     wn1 = WN_last(WN_ITER_wn(wni));
     while (wn1)
       {
        WN_Push(wn1, WN_ITER_stack(wni));
        wn1 = WN_prev(wn1);
       }
     }

  /* check for other structured control flow */
   else if (OPCODE_is_scf(WN_opcode(WN_ITER_wn(wni)))) 
     {
     for (i= WN_kid_count(WN_ITER_wn(wni))-1; i >= 0; --i) 
       {
       if (WN_kid(WN_ITER_wn(wni), i) != NULL)
         WN_Push(WN_kid(WN_ITER_wn(wni), i), WN_ITER_stack(wni));
       }
     }
 }

 if ((WN_ITER_wn(wni) = WN_Pop(WN_ITER_stack(wni))) == NULL)
   {
   WN_FreeStack(WN_ITER_stack(wni));
   free(wni);
   return NULL;
   }
 return wni;
}

/*-------------------------------------------------------------*/
/* return the next structured control flow node                */
/*-------------------------------------------------------------*/
extern WN_ITER *WN_WALK_SCFNext(WN_ITER *wni)
{
 INT i;
 WN *wn1;

/* WN may be null if the user has deleted a particular node
   while walking the tree, in that case it must also set
   the current node in the iterator as NULL
*/

 if (WN_ITER_wn(wni) != NULL)
   {

   /* handle a BLOCK */
   if (WN_operator(WN_ITER_wn(wni)) == OPR_BLOCK)
     {
     wn1 = WN_last(WN_ITER_wn(wni));
     while (wn1)
       {
       if (OPCODE_is_scf(WN_opcode(wn1)))
         WN_Push(wn1, WN_ITER_stack(wni));
        wn1 = WN_prev(wn1);
       }
     }

  /* check for other structured control flow */
   else if (OPCODE_is_scf(WN_opcode(WN_ITER_wn(wni)))) 
     {
     for (i= WN_kid_count(WN_ITER_wn(wni))-1; i >= 0; --i) 
       {
       if (WN_kid(WN_ITER_wn(wni),i) != NULL) {
          if (OPCODE_is_scf(WN_opcode(WN_kid(WN_ITER_wn(wni), i)))) 
            {
             WN_Push(WN_kid(WN_ITER_wn(wni), i), WN_ITER_stack(wni));
   	    }
	}
       }
     }
 }

 if ((WN_ITER_wn(wni) = WN_Pop(WN_ITER_stack(wni))) == NULL)
   {
   WN_FreeStack(WN_ITER_stack(wni));
   free(wni);
   return NULL;
   }
 return wni;
}

/*-------------------------------------------------------------*/
/* Abort a walk, i.e. stop walking and clean up the temporary  */
/* structures that were constructed for the walk               */
/*-------------------------------------------------------------*/
extern void WN_WALK_Abort(WN_ITER *wni)
{
 FmtAssert(wni != 0, ("Bad stack iterator")); 
 if (WN_ITER_stack(wni) != NULL)
   {
   WN_FreeStack(WN_ITER_stack(wni));
   free(wni);
   }
}


/*-------------------------------------------------------------*/
/* Insert node "in" into a BLOCK and before node "wn"          */
/*-------------------------------------------------------------*/
extern void WN_INSERT_BlockBefore(WN *blck, WN *wn, WN *in)
{
  WN *node, *first, *last;
  BOOL done = FALSE;

/* make sure it is a tree node */
 FmtAssert((in != 0), ("Bad tree node"));

/* make sure the operators are legal */
 FmtAssert(OPCODE_is_stmt(WN_opcode(in)) || OPCODE_is_scf(WN_opcode(in)),
       ("Expecting a structured control flow node or a statement node"));

 FmtAssert(WN_operator(blck) == OPR_BLOCK, 
       ("Expecting a BLOCK operator"));

/* locate the tree node "wn", node "in" must be
   inserted before it */

 if (wn != NULL)
   {
/* this check since often it is the case that an insert is done after the
   last node, just an optimization based on the behavior of insert
   operations */

   if (wn != WN_last(blck))
     {
     node = WN_first(blck);
     if (node != wn)
     {
      while (!done && (node != NULL)) 
       {
        if (node == wn)
          done = TRUE;
        else
          node = WN_next(node);
      }
     }
  FmtAssert(node != NULL, ("Illegal insert block operation"));
 }


/* if it is the first element in the list, adjust the block pointers  */
 if (WN_opcode(in) != OPC_BLOCK)
   {
   if ((WN_prev(wn) == NULL))
     WN_first(blck) = in;

/* adjust previous and next pointers */
   WN_prev(in) = WN_prev(wn);
   WN_prev(wn) = in;
   WN_next(in) = wn;
   if (WN_prev(in)) WN_next(WN_prev(in)) = in;
   }

 else  /* opcode is a block */
  {
   if (WN_first(in)) /* check if there are any elements in the block */
     {
     first = WN_first(in);
     last = WN_last(in);
     if ((WN_prev(wn) == NULL))
       WN_first(blck) = first;
   
      /* adjust previous and next pointers */
     WN_prev(first) = WN_prev(wn);
     WN_prev(wn) = last;
     WN_next(last) = wn;
     if (WN_prev(first)) WN_next(WN_prev(first)) = first;
     }
  WN_first(in) = WN_last(in) = NULL;
  WN_Delete(in);
  }
 }

/* inserting into a block, at the end, wn is null */
 else 
   {
   if (WN_opcode(in) != OPC_BLOCK)
     {
     if (WN_first(blck) != NULL)
       {
       WN_prev(in) = WN_last(blck);
       WN_next(WN_last(blck)) = in;
       WN_last(blck) = in;
       WN_next(in) = NULL;
       }
     else
       {
       WN_last(blck) = in;    
       WN_first(blck) = in;
       WN_prev(in) = WN_next(in) = NULL;
       }
    }
/* opcode is a block */
  else 
    {
    first = WN_first(in);
    last = WN_last(in);
    if (WN_first(in))
      {
      if (WN_first(blck) != NULL)
        {
        WN_prev(first) = WN_last(blck);
        WN_next(WN_last(blck)) =  first;
        WN_last(blck) = last;
        WN_next(last) = NULL;
        }
      else
        {
        WN_last(blck) = last;
        WN_first(blck) = first;
        WN_prev(first) = WN_next(last) = NULL;
        }
      }
     WN_first(in) = WN_last(in) = NULL;
     WN_Delete(in);
  }
 }
}

/*-------------------------------------------------------------*/
/* Insert node "in" into a BLOCK and after node "wn"           */
/*-------------------------------------------------------------*/
extern void WN_INSERT_BlockAfter(WN *blck, WN *wn, WN *in)
{
  WN *node, *first, *last;
  BOOL done = FALSE;

/* make sure it is a tree node */
 FmtAssert(in != 0, ("Bad tree node"));
 
/* make sure the operators are legal */
 FmtAssert(OPCODE_is_stmt(WN_opcode(in)) || OPCODE_is_scf(WN_opcode(in)), 
 ("Expecting a structured control flow node or a statement node"));

 FmtAssert(WN_operator(blck) == OPR_BLOCK, 
 ("Expecting a BLOCK"));

/* locate the tree node "wn", node "in" must be
   inserted before it                            */

 if (wn != NULL)
   {
/* this check since often it is the case that an insert is done after the
   last node, just an optimization based on the behavior of insert
   operations 
*/
   if (wn != WN_last(blck))
     {
     node = WN_first(blck);
     if (node != wn)
     {
      while (!done && (node != NULL)) 
       {
        if (node == wn)
          done = TRUE;
        else
          node = WN_next(node);
       }
     }
    FmtAssert(node != NULL, ("Illegal insert block operation"));
    }

/* if it is the last element in the list, adjust the block pointers  */
 if (WN_opcode(in) != OPC_BLOCK)
   {
   if (WN_next(wn) == NULL)
     WN_last(blck) = in;

  /* adjust previous and next pointers */
   WN_prev(in) = wn;
   WN_next(in) = WN_next(wn);
   WN_next(wn) = in;
   if (WN_next(in)) WN_prev(WN_next(in)) = in;
   }

 else /* opcode is a block */
  {
   if (WN_first(in)) /* check if there are any elements in the block */
     {
     first = WN_first(in);
     last = WN_last(in);
     if (WN_next(wn) == NULL)
       WN_last(blck) = last;

     /* adjust previous and next pointers */
     WN_prev(first) = wn;
     WN_next(last) = WN_next(wn);
     WN_next(wn) = first;
    if (WN_next(last)) WN_prev(WN_next(last)) = last;
    }
   WN_first(in) = WN_last(in) = NULL;
   WN_Delete(in);
  }   
 }

/* inserting into the beginning of a block, wn is null */
 else 
   {
   if (WN_opcode(in) != OPC_BLOCK)
     {
     /* if the block to be inserted into is not null */
     if (WN_last(blck) != NULL) 
       {
       WN_next(in) = WN_first(blck);
       WN_prev(in) = NULL;
       WN_prev(WN_first(blck)) = in;
       WN_first(blck) = in;
       }
     else
       {
       WN_last(blck) = in;    
       WN_first(blck) = in;
       WN_prev(in) = WN_next(in) = NULL;
       }
     }
   else /* opcode is BLOCK */
     {
      first = WN_first(in);
      last = WN_last(in);
      if (WN_first(in))  /* empty inserted block ? */
	{
        if (WN_first(blck) != NULL) /* empty block ? */
	  {
          WN_next(last) = WN_first(blck);
          WN_prev(first) = NULL;
          WN_prev(WN_first(blck)) = last;
          WN_first(blck) = first;
   	  } 
        else
          {
           WN_last(blck) = last;
           WN_first(blck) = first;
           WN_prev(first) = WN_next(last) = NULL;
 	  }
        }
       WN_first(in) = WN_last(in) = NULL;
       WN_Delete(in);
    }
  }
}


/*-------------------------------------------------------------*/
/* copy a node, recursive copy                                 */
/*-------------------------------------------------------------*/
WN *
WN_COPY_Tree (WN *wn)
{
    WN *new_wn;
    WN *kid;
    OPCODE op;

    if (wn == NULL)
	return NULL;

    new_wn = WN_CopyNode (wn);

    op = WN_opcode(wn);
    Is_True (OPCODE_operator(op) >= OPERATOR_FIRST &&
	     OPCODE_operator(op) <= OPERATOR_LAST,
	     ("Bad OPERATOR %d", OPCODE_operator(op)));

    if (op == OPC_BLOCK) {
	WN *prev_kid, *new_kid;

	new_kid = NULL;
	kid = WN_first(wn);
	if (kid) {
	    new_kid = WN_COPY_Tree (kid);
	    WN_prev(new_kid) = NULL;
	    WN_first(new_wn) = new_kid;
	    kid = WN_next(kid);
	    prev_kid = new_kid;

	    while (kid) {
		new_kid = WN_COPY_Tree (kid);
		WN_next(prev_kid) = new_kid;
		WN_prev(new_kid) = prev_kid;
		
		prev_kid = new_kid;
		kid = WN_next(kid);
	    }

	    WN_next(new_kid) = NULL;
	    
	} else
	    WN_first(new_wn) = NULL;

	WN_last(new_wn) = new_kid;

    } else {
	INT kidno;
	for (kidno = 0; kidno < WN_kid_count(wn); kidno++) {
	    kid = WN_kid(wn, kidno);
	    if (kid)
		WN_kid(new_wn, kidno) = WN_COPY_Tree (kid);
	    else
		WN_kid(new_wn, kidno) = NULL;
	}
    }

    return new_wn;
} /* WN_COPY_Tree */


#ifdef MONGOOSE_BE
/*-------------------------------------------------------------*/
/* copy all maps of a WN                                       */
/*-------------------------------------------------------------*/
void 
WN_COPY_All_Maps(WN *dst, WN *src)
{
  INT32 i;
  for (i = 0; i < WN_MAP_MAX; i++) { 
    if (Current_Map_Tab->_is_used[i]) 
      WN_CopyMap(dst, i, src);
  }
}


/*-------------------------------------------------------------*/
/* copy a node and its maps, recursive copy                    */
/*-------------------------------------------------------------*/
WN *
WN_COPY_Tree_With_Map (WN *wn)
{
    WN *new_wn;
    WN *kid;
    OPCODE op;

    if (wn == NULL)
	return NULL;

    new_wn = WN_CopyNode (wn);
    WN_COPY_All_Maps(new_wn, wn);

    op = WN_opcode(wn);
    Is_True (OPCODE_operator(op) >= OPERATOR_FIRST &&
	     OPCODE_operator(op) <= OPERATOR_LAST,
	     ("Bad OPERATOR %d", OPCODE_operator(op)));

    if (op == OPC_BLOCK) {
	WN *prev_kid, *new_kid;

	new_kid = NULL;
	kid = WN_first(wn);
	if (kid) {
	    new_kid = WN_COPY_Tree_With_Map (kid);
	    WN_prev(new_kid) = NULL;
	    WN_first(new_wn) = new_kid;
	    kid = WN_next(kid);
	    prev_kid = new_kid;

	    while (kid) {
		new_kid = WN_COPY_Tree_With_Map (kid);
		WN_next(prev_kid) = new_kid;
		WN_prev(new_kid) = prev_kid;
		
		prev_kid = new_kid;
		kid = WN_next(kid);
	    }

	    WN_next(new_kid) = NULL;
	    
	} else
	    WN_first(new_wn) = NULL;

	WN_last(new_wn) = new_kid;

    } else {
	INT kidno;
	for (kidno = 0; kidno < WN_kid_count(wn); kidno++) {
	    kid = WN_kid(wn, kidno);
	    if (kid)
		WN_kid(new_wn, kidno) = WN_COPY_Tree_With_Map (kid);
	    else
		WN_kid(new_wn, kidno) = NULL;
	}
    }

    return new_wn;
} /* WN_COPY_Tree_With_Map */
#endif /* MONGOOSE_BE */


/*-------------------------------------------------------------*/
/* recursive delete                                            */
/*-------------------------------------------------------------*/
extern void WN_DELETE_Tree(WN* tree)
{
    WN *node;
    INT i;

    if (tree) {
	if (WN_opcode(tree) == OPC_BLOCK) {
	    node = WN_first(tree);
	    while (node != NULL) {
		WN *next = WN_next(node);
		WN_DELETE_Tree (node);
		node = next;
	    }
	} else
	    for (i = 0; i< WN_kid_count(tree); i++)
		WN_DELETE_Tree(WN_kid(tree,i));

	WN_Delete(tree);
    }
}

/*-------------------------------------------------------------*/
/* delete node "wn" from the block, adjust the next, previous  */
/* and block first and last pointers                           */
/*-------------------------------------------------------------*/
void
WN_DELETE_FromBlock (WN *blck, WN* wn)
{
#ifdef Is_True_On
    WN *node;
    BOOL done = FALSE;
#endif /* Is_True_On */

    /* make sure it is a tree node */
    if (wn == NULL)
	return;

    /* make sure the operators are legal */
    Is_True (OPCODE_is_stmt(WN_opcode(wn)) || OPCODE_is_scf(WN_opcode(wn)),
	     ("Expecting a structured control flow node or a statement node"));
 
#ifdef Is_True_On
    /* make sure node "wn" is in the block */
    node = WN_first(blck);
    while (!done && (node != NULL)) {
	if (node == wn)
	    done = TRUE;
	else
	    node = WN_next(node);
    }

    Is_True (node != NULL, ("Illegal delete operation"));
#endif /* Is_True_On */
 
    if (WN_first(blck) == wn)
	WN_first(blck) = WN_next(wn);

    if (WN_last(blck) == wn)
	WN_last(blck) = WN_prev(wn);
  
    /* adjust previous and next pointers */
    if (WN_prev(wn) != NULL)
	WN_next(WN_prev(wn)) = WN_next(wn);

    if (WN_next(wn) != NULL)
	WN_prev(WN_next(wn)) = WN_prev(wn);

    WN_DELETE_Tree(wn);
}


/*-------------------------------------------------------------*/
/* remove the item from the parent block                       */
/*-------------------------------------------------------------*/
WN *WN_EXTRACT_FromBlock(WN *parent, WN *item)
{
  Is_True(parent && WN_opcode(parent) == OPC_BLOCK,
	  ("WN_Extract_FromBlock: parent not a block"));
  Is_True(item, ("WN_Extract_FromBlock: null item"));

#ifdef Is_True_On
  {
    WN *tmp;
    for (tmp = WN_first(parent); tmp && tmp != item; tmp = WN_next(tmp))
      ;
    Is_True(tmp == item, ("WN_Extract_FromBlock: item not on parent's list"));
  }
#endif

  if (WN_first(parent) == item)
    WN_first(parent) = WN_next(item);
  else
    WN_next(WN_prev(item)) = WN_next(item);

  if (WN_last(parent) == item)
    WN_last(parent) = WN_prev(item);
  else
    WN_prev(WN_next(item)) = WN_prev(item);

  WN_prev(item) = NULL;
  WN_next(item) = NULL;
  return item;
}

/*-------------------------------------------------------------*/
/* remove the items between first and last from the parent block */
/*-------------------------------------------------------------*/
WN *WN_EXTRACT_ItemsFromBlock(WN *parent, WN *first_item, WN *last_item)
{
  Is_True(parent && WN_opcode(parent) == OPC_BLOCK,
	  ("WN_Extract_FromBlock: parent not a block"));
  Is_True(first_item, ("WN_Extract_FromBlock: null item"));
  Is_True(last_item, ("WN_Extract_FromBlock: null item"));

  if (first_item == last_item)
	return WN_EXTRACT_FromBlock (parent, first_item);

#ifdef Is_True_On
  {
    WN *tmp;
    for (tmp = WN_first(parent); tmp && tmp != first_item; tmp = WN_next(tmp))
      ;
    Is_True(tmp == first_item, ("WN_Extract_ItemsFromBlock: item not on parent's list"));
  }
#endif

  if (WN_first(parent) == first_item)
    WN_first(parent) = WN_next(last_item);
  else
    WN_next(WN_prev(first_item)) = WN_next(last_item);

  if (WN_last(parent) == last_item)
    WN_last(parent) = WN_prev(first_item);
  else
    WN_prev(WN_next(last_item)) = WN_prev(first_item);

  WN_prev(first_item) = NULL;
  WN_next(last_item) = NULL;

  return first_item;
}

/*=============================================================*/
/* WN_LOOP routines                                            */
/*=============================================================*/


/*-------------------------------------------------------------*/
/* Given an IDNAME or LDID, get the st and offset              */
/* If unable to determine them, return var_st = NULL           */
/*-------------------------------------------------------------*/
static void
wn_loop_get_st_ofst (const WN *var, ST_IDX& var_st, WN_OFFSET& var_offset)
{
    if ( WN_opcode(var) == OPC_IDNAME ) {
	var_st = WN_st_idx(var);
	var_offset = WN_idname_offset(var);
	return;
    } else {
	const OPERATOR var_opr = WN_operator(var);
	if ( var_opr == OPR_LDID ) {
	    var_st = WN_st_idx(var);
	    var_offset = WN_load_offset(var);
	    return;
	}
	if ( var_opr == OPR_STID ) {
	    var_st = WN_st_idx(var);
	    var_offset = WN_store_offset(var);
	    return;
	}
    }
  
    var_st = 0;
    var_offset = 0;
}

/*-------------------------------------------------------------*/
/* Determine if the WN reference (IDNAME, LDID) matches the    */
/* var_st and var_ofst exactly.                                */
/*-------------------------------------------------------------*/
static BOOL
wn_loop_ref_matches_var (const WN *ref, ST_IDX st, WN_OFFSET ofst)
{
  ST_IDX ref_st;
  WN_OFFSET ref_ofst;

  wn_loop_get_st_ofst( ref, ref_st, ref_ofst );
  return ( ref_st == st && ref_ofst == ofst );
}

/*-------------------------------------------------------------*/
/* Given a comparison operator, return the opposite comparison */
/* as if the operands are swapped.                             */
/*-------------------------------------------------------------*/
static OPCODE wn_loop_reverse_compare( OPCODE comparison )
{
  OPERATOR compare_opr = OPCODE_operator(comparison);
  TYPE_ID compare_desc = OPCODE_desc(comparison);
  TYPE_ID compare_rtype = OPCODE_rtype(comparison);

  switch ( compare_opr ) {
    case OPR_LT : return OPCODE_make_op(OPR_GT,compare_rtype,compare_desc);
    case OPR_LE : return OPCODE_make_op(OPR_GE,compare_rtype,compare_desc);
    case OPR_EQ : return OPCODE_make_op(OPR_EQ,compare_rtype,compare_desc);
    case OPR_NE : return OPCODE_make_op(OPR_NE,compare_rtype,compare_desc);
    case OPR_GE : return OPCODE_make_op(OPR_LE,compare_rtype,compare_desc);
    case OPR_GT : return OPCODE_make_op(OPR_LT,compare_rtype,compare_desc);
    default:
      FmtAssert( FALSE,
	("wn_loop_reverse_compare: not a comparison operator") );
      return (OPCODE)0;
  }
}

/*-------------------------------------------------------------*/
/* Determine the loop's induction variable.  Returns either an */
/* IDNAME or LDID                                              */
/* If unable to determine it, returns NULL.                    */
/*-------------------------------------------------------------*/
extern WN *WN_LOOP_InductionVariable(const WN *loop)
{
  /* if this isn't a do_loop, we don't have a clue what the 
   * induction variable may be. (unless we later get some
   * kind of help from someone)
   */
  if ( WN_opcode(loop) != OPC_DO_LOOP )
    return NULL;

  return WN_index(loop);
}

/*-------------------------------------------------------------*/
/* Determine the lower bound of the loop, which is basically   */
/* the value stored to the induction variable to initialize    */
/* the loop.                                                   */
/* If unable to determine it, returns NULL.                    */
/*-------------------------------------------------------------*/

extern WN *WN_LOOP_LowerBound( const WN *loop )
{
  WN *iv;		/* induction variable */
  ST_IDX iv_st;		/*   it's symbol table entry */
  WN_OFFSET iv_ofst;	/*   it's offset from st */
  WN *start;		/* initialization */
  OPERATOR start_opr;	/*   it's operator */

  /* what is the induction variable?  needed to know if the init
   * code initializes it.
   */
  iv = WN_LOOP_InductionVariable( loop );
  if ( iv == NULL )
    return NULL;
  wn_loop_get_st_ofst( iv, iv_st, iv_ofst );
  if ( iv_st == 0 )
    return NULL;

  start = WN_start(loop);
  start_opr = WN_operator(start);
  if ( start_opr == OPR_STID ) {
    /* make sure we're storing to the induction variable */
    if ( WN_st_idx(start) == iv_st && WN_store_offset(start) == iv_ofst )
      return WN_kid0(start);
  }

  /* todo: handle other kinds of stores? */
  return NULL;
}

/*-------------------------------------------------------------*/
/* Determine the upper bound of the loop, which is basically   */
/* the value which can not be exceeded (going in either        */
/* direction (positive dir if increment is positive, or        */
/* negative direction is increment is negative                 */
/* Also returns the comparison operator to know how the iv is  */
/* related to this upper bound.  We canonicalize it so the iv  */
/* is always on the lhs of the comparison, and the upper bound */
/* is always on the rhs:  iv <,<=,==,!=,>=,> upper bound       */
/* If unable to determine it, returns NULL.                    */
/*-------------------------------------------------------------*/

extern WN *WN_LOOP_UpperBound( const WN *loop, OPCODE *compare )
{
  WN *iv;		/* induction variable */
  ST_IDX iv_st;		/*   it's symbol table entry */
  WN_OFFSET iv_ofst;	/*   it's offset from st */
  WN *end;		/* ending condition */
  OPCODE end_opc;	/*   and its opcode */

  /* what is the induction variable?  needed to know if the end
   * condition compares against it
   */
  iv = WN_LOOP_InductionVariable( loop );
  if ( iv == NULL )
    return NULL;
  wn_loop_get_st_ofst( iv, iv_st, iv_ofst );
  if ( iv_st == 0 )
    return NULL;

  /* find out if we have a comparison operator for an ending condition
   * which we end up returning.
   */
  end = WN_end(loop);
  end_opc = WN_opcode(end);
  if ( ! OPCODE_is_compare(end_opc) )
    return NULL;

  /* which kid is the comparing to the iv? */
  if ( wn_loop_ref_matches_var( WN_kid0(end), iv_st, iv_ofst ) ) {
    *compare = end_opc;
    return WN_kid1(end);
  }
  else if ( wn_loop_ref_matches_var( WN_kid1(end), iv_st, iv_ofst ) ) {
    *compare = wn_loop_reverse_compare( end_opc );
    return WN_kid0(end);
  }

  /* if we get here, we must not have figured out the upper bound */
  *compare = OPCODE_UNKNOWN;
  return NULL;
}

/*-------------------------------------------------------------*/
/* Determine the increment (if is_incr = TRUE) value           */
/* the value which can not be exceeded (going in either        */
/* direction (positive dir if is_incr is true, or negative     */
/* direction if is_incr is false (actually decrements iv)      */
/* If unable to determine it, returns NULL.                    */
/*-------------------------------------------------------------*/
extern WN *WN_LOOP_Increment( const WN *loop, BOOL *is_incr )
{
  WN *iv;		/* induction variable */
  ST_IDX iv_st;		/*   it's symbol table entry */
  WN_OFFSET iv_ofst;	/*   it's offset from st */
  WN *step;		/* increment */
  OPERATOR step_opr;	/*   and its operator */
  WN *store_val;	/* value stored to iv to incr/decr it */
  OPERATOR store_opr;	/*   and its operator */

  /* what is the induction variable?  needed to know if the end
   * condition compares against it
   */
  iv = WN_LOOP_InductionVariable( loop );
  if ( iv == NULL )
    return NULL;
  wn_loop_get_st_ofst( iv, iv_st, iv_ofst );
  if ( iv_st == 0 )
    return NULL;

  step = WN_step(loop);
  step_opr = WN_operator(step);

  if ( step_opr == OPR_STID ) {
    /* make sure the increment is to the iv */
    if ( iv_st != WN_st_idx(step) || iv_ofst != WN_store_offset(step) )
      return NULL;
    
    store_val = WN_kid0(step);
    store_opr = WN_operator(store_val);
  }
  else {
    /* todo: handle more kinds of stores? */
    return NULL;
  }

  if ( store_opr == OPR_ADD )
    *is_incr = TRUE;
  else if ( store_opr == OPR_SUB )
    *is_incr = FALSE;
  else
    return NULL;

  /* at this point, we know the incr/decr is a binary op (add/sub) */
  /* which kid, if any is being added to or subtracted from the iv */
  if ( wn_loop_ref_matches_var( WN_kid0(store_val), iv_st, iv_ofst ) ) {
    return WN_kid1(store_val);
  }
  else if ( wn_loop_ref_matches_var(WN_kid1(store_val),iv_st,iv_ofst) ){
    /* if the 2nd kid is the iv, it can only be an add for us to 
     * recognize it.
     */
    if ( store_opr == OPR_ADD )
      return WN_kid0(store_val);
    else
      return NULL;
  }
  else {
    /* if we get here, must not have a clue */
    return NULL;
  }
}

/*-------------------------------------------------------------*/
/* Determine the trip count, which may be a LDID, or INTCONST  */
/* If unable to determine it, returns NULL.                    */
/*-------------------------------------------------------------*/
extern WN *WN_LOOP_TripCount(const WN *loop)
{
  WN *lb;			/* lower bound of loop */
  WN *ub;			/* upper bound of loop */
  OPCODE ub_compare;		/*   and comparison op for ub */
  WN *incr;			/* loop increment */
  BOOL is_incr;			/*   and is it increment or decrement */
  WN *trip_cnt;			/* calculated trip count tree */
  BOOL saved_fold_enable;	/* saved state of simplifier */
  TYPE_ID trip_mtype;		/* mtype of tripcount expression */

  /* if this isn't a do_loop, we don't have a clue what the 
   * tripcount may be. (unless we later get some kind of help 
   * from someone)
   */
  if ( WN_opcode(loop) != OPC_DO_LOOP )
    return NULL;

  lb = WN_LOOP_LowerBound( loop );
  if ( lb == NULL )
    return NULL;

  ub = WN_LOOP_UpperBound( loop, &ub_compare );
  if ( ub == NULL )
    return NULL;

  incr = WN_LOOP_Increment( loop, &is_incr );
  if ( incr == NULL )
    return NULL;

  /* if we're using floating point, we don't try to figure out the
   * trip count.
   */
  trip_mtype = OPCODE_desc(ub_compare);
  if ( ! MTYPE_is_integral(WN_rtype(lb)) ||
       ! MTYPE_is_integral(WN_rtype(ub)) ||
       ! MTYPE_is_integral(WN_rtype(incr)) ||
       ! MTYPE_is_integral(trip_mtype) )
    return NULL;

  /* force simplification to be enabled */
  saved_fold_enable = WN_Simplifier_Enable(TRUE);

  /* calculate trip_cnt = ((ub - lb) + incr) / incr
   * (but leave out "+ incr" if comparison is GT or LT)
   */
   
  trip_cnt = WN_CreateExp2( OPCODE_make_op(OPR_SUB,trip_mtype,MTYPE_V),
			    WN_COPY_Tree(ub), WN_COPY_Tree(lb) );
  if (OPCODE_operator(ub_compare) != OPR_GT &&
      OPCODE_operator(ub_compare) != OPR_LT)
    trip_cnt = WN_CreateExp2( OPCODE_make_op(OPR_ADD,trip_mtype,MTYPE_V),
			      trip_cnt, WN_COPY_Tree(incr) );
  trip_cnt = WN_CreateExp2( OPCODE_make_op(OPR_DIV,trip_mtype,MTYPE_V),
			    trip_cnt, WN_COPY_Tree(incr) );

  /* reset simplification */
  (void) WN_Simplifier_Enable(saved_fold_enable);

  return trip_cnt;
}



static TY_IDX
field_type (const TY_IDX ty_idx, UINT field_id)
{
  UINT cur_field_id = 0;
  FLD_HANDLE fld = FLD_get_to_field (ty_idx, field_id, cur_field_id);
  Is_True (! fld.Is_Null(), ("Invalid field id %d for type 0x%x",
			     field_id, ty_idx));
  return FLD_type (fld);
}

/*  Obtain the high-level type of item being accessed.
 *   It is the WN_ty() for all loads
 *   It is the WN_ty() for STID
 *   It is the type pointed to by WN_ty() for ISTORE.
 *   If field_id is non-zero, it's the FLD_type of the corresponding field
 *   in WN_ty().
 *   See the WHIRL document.
 */
#include "tracing.h"
TY_IDX
WN_object_ty (const WN *wn)
{
  if (OPCODE_is_load(WN_opcode(wn))) {
    if ((WN_operator(wn) == OPR_LDID || 
	 WN_operator(wn) == OPR_ILOAD ||
	 WN_operator(wn) == OPR_LDBITS) && 
	WN_field_id(wn) != 0 &&
	TY_kind(WN_ty(wn)) == KIND_STRUCT)
      return field_type (WN_ty(wn), WN_field_id(wn));
    if ((WN_operator(wn) == OPR_ILOAD || WN_operator(wn) == OPR_ILDBITS)) {
      Is_True (TY_kind(WN_load_addr_ty(wn)) == KIND_POINTER,
	("TY of ILOAD is not KIND_POINTER."));
      TY_IDX ty_idx = TY_pointed(WN_load_addr_ty(wn));
      return ty_idx;
    }
    return WN_ty(wn);
  } else if (OPCODE_is_store(WN_opcode(wn))) {
    TY_IDX ty_idx = WN_ty(wn);
    if (!(WN_operator(wn) == OPR_STID || WN_operator(wn) == OPR_STBITS)) {
      Is_True(TY_kind(WN_ty(wn)) == KIND_POINTER,
	      ("TY of ISTORE is not KIND_POINTER."));
      ty_idx = TY_pointed(WN_ty(wn));
    }
    if (WN_field_id(wn) != 0 && TY_kind(ty_idx) == KIND_STRUCT) {
      return field_type(ty_idx, WN_field_id(wn));
    }
    return ty_idx;
  } else {
    return (TY_IDX) 0;
  }
}

/* Obtain the size in bytes of object being accessed.
 */
INT32 WN_object_size(const WN *wn)
{
  OPERATOR opr = WN_operator(wn);
  switch (opr) {
  case OPR_ISTORE:
  case OPR_ILOAD:
  case OPR_ISTOREX:
  case OPR_ILOADX:
  case OPR_LDID:
  case OPR_STID:
  case OPR_LDBITS:
  case OPR_STBITS:
  case OPR_ILDBITS:
  case OPR_ISTBITS:
    return (MTYPE_size_min(WN_desc(wn)) >> 3);
  case OPR_MLOAD:
    if (WN_operator(WN_kid1(wn)) == OPR_INTCONST)
      return WN_const_val(WN_kid1(wn));
    return 0;
  case OPR_MSTORE:
    if (WN_operator(WN_kid2(wn)) == OPR_INTCONST)
      return WN_const_val(WN_kid2(wn));
    return 0;
  case OPR_PARM:
    return (MTYPE_size_min(WN_rtype(wn)) >> 3);
  default:
    FmtAssert(FALSE, ("opcode not expected in WN_object_size."));
    return 0;
  }
}


/***********************************************************************
 *
 * Given a pragma_id, return true if the pragma is for a parallel
 * region, FALSE otherwise.
 *
 ***********************************************************************/
static inline BOOL Pragma_is_Parallel_Region (WN_PRAGMA_ID pragma) {

  switch (pragma) {
  case WN_PRAGMA_PARALLEL_BEGIN:
  case WN_PRAGMA_PARALLEL_SECTIONS:
  case WN_PRAGMA_PARALLEL_DO:
  case WN_PRAGMA_DOACROSS:
    return TRUE;
  default:
    return FALSE;
  }
}

/***********************************************************************
 *
 * Given a pragma_id, return true if the pragma is for a work-sharing
 * construct, FALSE otherwise.
 *
 ***********************************************************************/
static inline BOOL Pragma_is_Work_Sharing (WN_PRAGMA_ID pragma) {

  switch (pragma) {
  case WN_PRAGMA_PARALLEL_SECTIONS:
  case WN_PRAGMA_PARALLEL_DO:
  case WN_PRAGMA_DOACROSS:
  case WN_PRAGMA_PDO_BEGIN:
  case WN_PRAGMA_PSECTION_BEGIN:
  case WN_PRAGMA_SINGLE_PROCESS_BEGIN:
    return TRUE;
  default:
    return FALSE;
  }
}


/***********************************************************************
 *
 *     Given a vector of WHIRL-MP regions innermost to outermost
 *     (i.e. the innermost MP region is first, outermost is last)
 *     add a pragma of the given type for the given ST *as required* 
 *     to the MP regions. (The ofst may be needed if we add pregs,
 *     but should currently be always 0).
 *
 *     The algorithm for adding pragmas 
 *     currently works for LOCAL and SHARED pragmas only.
 *     Also, if the parent_map is non-NULL, then update the
 *     parent-map when inserting.
 *
 *     The last argument determines whether the compiler_generated bit
 *     is set on the pragma. This bit is set to TRUE only when doing
 *     automatic parallelization using -pfa.
 *
 ***********************************************************************/
extern void Add_Pragma_To_MP_Regions (WN_VECTOR *wnv, 
                                      WN_PRAGMA_ID pragma_id,
                                      ST *st, WN_OFFSET ofst,
                                      WN_MAP parent_map,
                                      BOOL make_compiler_generated) {
  

  /* We currently only handle LOCAL and SHARED pragmas;
   * the following algorithm may be different for other pragmas.
   */
  FmtAssert (pragma_id == WN_PRAGMA_LOCAL || pragma_id == WN_PRAGMA_SHARED,
             ("Add_Pragma: can only handle LOCAL or SHARED pragmas"));

  switch (pragma_id) {
  case WN_PRAGMA_SHARED: {
    //
    // Since the default is SHARED (except for pregs), 
    // an explicit SHARED pragma is needed if 
    //  - we have a preg
    //  - the user had a DEFAULT(PRIVATE) clause
    //
    // We basically walk up the WHIRL-MP regions, and for PARALLEL
    // regions add an explicit SHARED clause. And do some
    // error-checking to boot.
    //
    for (WN_VECTOR::iterator wni = wnv->begin();
         wni != wnv->end();
         wni++) {

      WN *region_wn = *wni;

#ifdef BACK_END
      Is_True (WN_opcode(region_wn) == OPC_REGION &&
               REGION_is_mp(region_wn),
               ("Add_Pragma: expected an MP WHIRL region"));
#endif
      WN *pragma_wn = WN_first(WN_region_pragmas(region_wn));

      Is_True (WN_opcode(pragma_wn) == OPC_PRAGMA,
               ("Add_Pragma: Expected a pragma node"));
      WN_PRAGMA_ID pragma = (WN_PRAGMA_ID) WN_pragma(pragma_wn);

      if (Pragma_is_Parallel_Region(pragma)) {
        WN *shared_pwn = WN_CreatePragma (pragma_id, st, ofst, 0);
        if (make_compiler_generated) {
          WN_set_pragma_compiler_generated(shared_pwn);
        }

#ifdef Is_True_On
        {
          //
          // Check that there is no conflict (e.g. LOCAL clause)
          //
          WN *pwn = pragma_wn;
          while (pwn) {
            WN_PRAGMA_ID p_id = (WN_PRAGMA_ID) WN_pragma(pwn);

            if ((p_id == WN_PRAGMA_LOCAL ||
                 p_id == WN_PRAGMA_LASTLOCAL ||
                 p_id == WN_PRAGMA_FIRSTPRIVATE) &&
                WN_st(pwn) == st &&
                WN_offset(pwn) == ofst) {

              Is_True (FALSE,
                       ("Add_Pragma: Conflict trying to add SHARED(%s) pragma",
                        ST_name(st)));
                        
            }
            pwn = WN_next(pwn);
          }
        }
#endif

        WN_INSERT_BlockBefore (WN_region_pragmas(region_wn), NULL, shared_pwn);

        if (parent_map) {
          WN_MAP_Set(parent_map,
                     shared_pwn, (void*)WN_region_pragmas(region_wn));
        }
      }
    }
    break;
  }
  case WN_PRAGMA_LOCAL: {

    BOOL need_pragma = TRUE;
  
    for (WN_VECTOR::iterator wni = wnv->begin();
         wni != wnv->end();
         wni++) {
      //
      // iterate over all the elements, first to last
      // (i.e. from inner-most enclosing WHIRL-MP-REGION to outermost
      //

      WN *region_wn = *wni;

#ifdef BACK_END
      Is_True (WN_opcode(region_wn) == OPC_REGION &&
               REGION_is_mp(region_wn),
               ("Add_Pragma: expected an MP WHIRL region"));
#endif
      WN *pragma_wn = WN_first(WN_region_pragmas(region_wn));

      Is_True (WN_opcode(pragma_wn) == OPC_PRAGMA,
               ("Add_Pragma: Expected a pragma node"));
      WN_PRAGMA_ID pragma = (WN_PRAGMA_ID) WN_pragma(pragma_wn);

      if (need_pragma == TRUE &&
          (Pragma_is_Parallel_Region(pragma) ||
           Pragma_is_Work_Sharing(pragma))) {
      
        WN *local_pwn = WN_CreatePragma (pragma_id, st, ofst, 0);
        if (make_compiler_generated) {
          WN_set_pragma_compiler_generated(local_pwn);
        }

        WN_INSERT_BlockBefore (WN_region_pragmas(region_wn), NULL, local_pwn);

        if (parent_map) {
          WN_MAP_Set(parent_map,local_pwn,(void*)WN_region_pragmas(region_wn));
        }
        need_pragma = FALSE;
      }

      if (Pragma_is_Parallel_Region(pragma)) {
        //
        // reset, since we need to repeat this for outer enclosing
        // parallel regions.
        //
        need_pragma = TRUE;
      }
    }
    break;
  }
  default:
    Is_True (FALSE, ("Add_Pragma: trying to add unsupported pragma"));
  }
}
