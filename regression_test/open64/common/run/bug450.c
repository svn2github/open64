extern int printf(const char*, ...);
int main(void) {
  int A = 0x837bf7d1;
  unsigned long long B = ((unsigned long long) (unsigned)A) << 21;
  printf("0x%08x, 0x%016llx\n", A,B);
  return 0;
}
