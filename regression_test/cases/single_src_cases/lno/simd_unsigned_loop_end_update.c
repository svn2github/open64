//CMD: $(CC) -O3 -INLINE:ne=foo:ne=init:ne=check -OPT:unroll_times_max=1 -m32 $(SOURCE) -o $(TARGET) 


/*Simd_Finalize_Loops will update loop_end align to vecotrize factor (vect)
  i <= start + (((end - start + 1) / vect) * vect) -1
  suppose start is 0, end is 2, vect is 4, original serial loop is
  for( i = 0; i < 2; i++)
  after Simd_Finalize_Loops transformation, simd loop becomes
  for(i = 0, i <= -1; i++),
  This loop will itreate 0xffffffff times.
 
  The fix is change loop end to following form when compraion is unsigned.
  i < start + (((end - start + 1) / vect) * vect)
*/

int a[100];

int foo()
{
   static int count = 0;
   if(count == 0) {
        count++;
        return 0;
   }
   else
        return 2;

}

void init()
{
  int i;
  for(i = 0; i < 100; i++)
    a[i] = i;
}

int check()
{
  // check a[0] = 1, a[1] = 1
  int i;
  if(a[0] != 1 || a[1] != 1) {
    return 1; 
  }
  return 0;
}

int main()
{
   int start;
   unsigned i, end;
   init();
   start = foo();
   end = foo();
   for( i = start; i < end-1; i++) {
     a[i] = a[i+1];
   }
   return check();
}

