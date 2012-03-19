//TAG: kernel
//flags: -O0
extern void __bad_percpu_size(void);
char *per_cpu__current_task;
int main(void){
  

  char * ret__;
switch (sizeof(per_cpu__current_task)) 

  { case 1: asm volatile ("mov" "b ""%%""gs"":%P" "1"",%0" : "=q" (ret__) : "p" (&per_cpu__current_task)); break; 
  case 2: asm volatile ("mov" "w ""%%""gs"":%P" "1"",%0" : "=r" (ret__) : "p" (&per_cpu__current_task)); break;
    case 4: asm volatile ("mov" "l ""%%""gs"":%P" "1"",%0" : "=r" (ret__) : "p" (&per_cpu__current_task)); break; 
  case 8: asm volatile ("inc %rax"); break;
    
  }
 return 0;
}
