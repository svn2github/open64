#include <stdio.h>
extern unsigned long long __attribute__((section(".data"))) jiffies_64;
extern unsigned long volatile __attribute__((section(".data"))) jiffies;
unsigned long volatile __attribute__((section(".data"))) jiffies=100;
unsigned long long  jiffies_64 __attribute__((__aligned__((1 << (6))))) =
  ((unsigned long)(unsigned int) (-300*1000));
void do_timer(unsigned long ticks)
{
  jiffies_64 += ticks;
}
int main()
{
  do_timer(1);
  printf("%d\n", jiffies_64);
  printf("%d\n", jiffies);
  return 0;
}
