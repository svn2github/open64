// This file contains only Linux-specific code and should be entirely
// #ifdef'd out for Irix.

// Work around the "undefined weak symbol" bug in Linux.
//
// see comments in be/com/weak.cxx.
//
// This file define initialization of pointer variables to symbols defined
// in cg.so but referenced in be/be.so.

#ifdef __linux__

struct ORC_INIT
{
    ORC_INIT () {
    }
} ORC_Initializer;

#endif // __linux__
