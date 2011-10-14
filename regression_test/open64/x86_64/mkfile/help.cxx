extern "C" {

  struct S {

    char c;

  };

  extern void (_Z3fooc)(struct S*, char);

  void
  _Z3fooc (struct S* s,
           char      c)
  {
    s->c = c;
  }
} // extern "C"

