#include <stdio.h>
struct S {

  char c;

  S (char arg);

  S (S const&);
  /* Explicitly declaring a copy constructor
     makes it non-trivial.  */

};

S foo (char);

S::S (S const& s)
{
  c = s.c;
}

int
main (int argc, char** argv) {
  S object (foo ('1'));
  fprintf(stderr,"%c",object.c);
  return 0;
}

