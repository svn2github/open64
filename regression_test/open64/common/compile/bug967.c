//OBJ
static unsigned long *anon1; 
int x86_this_cpu_constant_test_bit(unsigned int nr)
{
 return ((1UL << (nr % 64)) & ({ typeof(*anon1) pfo_ret__; switch (sizeof(*anon1)) { case 1: asm("mov" "b ""%%""gs"":" "%P" "1"",%0" : "=q" (pfo_ret__) : "m" (*anon1)); break; case 2: asm("mov" "w ""%%""gs"":" "%P" "1"",%0" : "=r" (pfo_ret__) : "m" (*anon1)); break; case 4: asm("mov" "l ""%%""gs"":" "%P" "1"",%0" : "=r" (pfo_ret__) : "m" (*anon1)); break; case 8: asm("mov" "q ""%%""gs"":" "%P" "1"",%0" : "=r" (pfo_ret__) : "m" (*anon1)); break; default: __bad_percpu_size(); } pfo_ret__; })) != 0;
}
