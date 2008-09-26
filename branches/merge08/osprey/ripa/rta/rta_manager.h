
/*

  Copyright (C) 2008 .  All Rights Reserved.

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

*/

/*! \file rta_manager.h
 * \brief Header file for annotation section manager.
 *
 * It requires rta.h and messg.h.
 *
 * TODO complete it
 */

#ifndef _RTA_MANAGER_H_
#define _RTA_MANAGER_H_

#include <stdio.h>

// #define T Rta_Pu // debugging without template
template <class T>
class Rta_Rnd_Iter {
private:
  friend class Rta_Manager;
  
  T * _base;    //!< pointer to base of the object array
  int _index;   //!< index in the object array
  int _size;    //!< size of the object array

  Rta_Rnd_Iter(T * base, int size, int index = 0) : _base(base), _index(index), _size(size) { }
public:
  Rta_Rnd_Iter(const Rta_Rnd_Iter &iter)
      : _base(iter._base), _index(iter._index), _size(iter._size) { }
  Rta_Rnd_Iter & operator=(const Rta_Rnd_Iter &iter) {
    _base = iter._base;
    _index = iter._index;
  }

  T & operator*() const {
    FmtAssert(_index < _size, ("Dereferencing iterator that points beyond the last element."));
    return _base[_index];
  }
  Rta_Rnd_Iter & operator++() {
    FmtAssert(_index < _size, ("Iterator moves out of bound."));
    ++_index;
    return *this;
  }
  Rta_Rnd_Iter   operator++(int) {
    FmtAssert(_index < _size, ("Iterator moves out of bound."));
    Rta_Rnd_Iter iter(*this);
    ++_index;
    return iter;
  }
  Rta_Rnd_Iter & operator--() {
    FmtAssert(_index > 0, ("Iterator moves out of bound."));
    --_index;
    return *this;
  }
  Rta_Rnd_Iter   operator--(int) {
    FmtAssert(_index > 0, ("Iterator moves out of bound."));
    Rta_Rnd_Iter iter(*this);
    --_index;
    return iter;
  }
  Rta_Rnd_Iter & operator+=(int offset) {
    _index += offset;
    FmtAssert(_index > 0 && _index <= _size, ("Iterator moves out of bound."));
    return *this;
  }
  Rta_Rnd_Iter & operator-=(int offset) {
    return *this += (-offset);
  }
  Rta_Rnd_Iter operator+(int offset) const {
    Rta_Rnd_Iter iter(*this);
    iter._index += offset;
    FmtAssert(iter._index > 0 && iter._index <= _size, ("Iterator moves out of bound."));
    return iter;
  }
  Rta_Rnd_Iter operator-(int offset) const {
    return *this + (-offset);
  }

  bool operator==(const Rta_Rnd_Iter &iter) const {
    return _base == iter._base && _index == iter._index;
  }
  bool operator!=(const Rta_Rnd_Iter &iter) const {
    return !(*this == iter);
  }
};

/*!
 * \brief Manager for an annotation section.
 *
 * Given the starting address of an annotation section in memory, this manager
 * provides iterators for PU/BB headers and CFG.
 *
 * TODO const * _start?
 */
class Rta_Manager {
public:
//  typedef Rta_Rnd_Iter Pu_Iter; // debugging without template
  typedef Rta_Rnd_Iter<Rta_Pu> Pu_Iter;
  typedef Rta_Rnd_Iter<Rta_Bb> Bb_Iter;
  typedef Rta_Rnd_Iter<Rta_Op> Op_Iter;

  Rta_Manager(void * start) : _start(start) { }

  Rta_Hdr &     Hdr() const { return *(Rta_Hdr *)_start; }

  /* PU iterator functions */
  int           num() const   { return Rta_hdr_pu_num(&Hdr()); }
  Pu_Iter       begin() const { return Pu_Iter(ary(), num()); }
  Pu_Iter       end() const   { return Pu_Iter(ary(), num(), num());}
  Rta_Pu &      Pu(int index) const {
    FmtAssert((index != 0), ("Index 0 is reserved. PUs are indexed from 1."));
    FmtAssert((index > 0) && (index <= num())
        , ("Index (%d) in PU header table is out of bound [%d, %d]"
        , index, 1, num()));
    return ary()[index-1];
  }

  /* BB iterator functions */
  int           num(const Pu_Iter & pi) const {
    return Rta_pu_bb_num(&*pi);
  }
  Bb_Iter       begin(const Pu_Iter & pi) const {
    return Bb_Iter(ary(pi), num(pi));
  }
  Bb_Iter       end(const Pu_Iter & pi) const {
    return Bb_Iter(ary(pi), num(pi), num(pi));
  }
  Rta_Bb &      Bb(const Pu_Iter & pi, int index) const {
    FmtAssert((index != 0), ("Index 0 is reserved. BBs are indexed from 1."));
    FmtAssert((index >= Rta_pu_bb_begin(&*pi))
        && (index < Rta_pu_bb_begin(&*pi) + num(pi))
        , ("Index (%d) in BB header table is out of bound [%d, %d]"
        , index, Rta_pu_bb_begin(&*pi), Rta_pu_bb_begin(&*pi) + num(pi) - 1));
    return ary(pi)[index - Rta_pu_bb_begin(&*pi)];
  }

  /* OP iterator functions */
  int           num(const Bb_Iter & bi) const {
    return Rta_bb_op_num(&*bi);
  }
  Op_Iter       begin(const Bb_Iter & bi) const {
    return Op_Iter(ary(bi), num(bi));
  }
  Op_Iter       end(const Bb_Iter & bi) const {
    return Op_Iter(ary(bi), num(bi), num(bi));
  }
  Rta_Op &      Op(const Bb_Iter & bi, int index) const {
    FmtAssert((index != 0), ("Index 0 is reserved. OPs are indexed from 1."));
    FmtAssert((index > 0), ("OP index (%d) is negative."));
    return ary(bi)[index - 1];
  }
private:
  void *  _start;

  Rta_Pu *  ary() const {
    return (Rta_Pu *)((char *)_start + Rta_hdr_pu_off(&Hdr()));
  }
  Rta_Bb *  ary(const Pu_Iter & pi) const {
    return (Rta_Bb *)((char *)&*pi + Rta_pu_bb_off(&*pi));
  }
  Rta_Op *  ary(const Bb_Iter & bi) const {
    return (Rta_Op *)((char *)&*bi + Rta_bb_op_off(&*bi));
  }
};

#endif // _RTA_MANAGER_H_
