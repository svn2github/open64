//OBJ
//FLAGS: -O0
//TAG: kernel
extern  __attribute__ ((section (".data.percpu" ""))) __typeof__ (struct
                                                                  task_struct  *)  per_cpu__current_task;
static inline __attribute__ ((always_inline)) struct task_struct *
get_current (void)
{
  return (
    {
      typeof (per_cpu__current_task) ret__;
      switch (sizeof (per_cpu__current_task))
        {
        case 1:
          asm ("mov" "b " "%%" "gs" ":%P" "1" ",%0": "=q" (ret__): "p"
               (&per_cpu__current_task));
        case 4:
          asm ("mov" "l " "%%" "gs" ":%P" "1" ",%0": "=r" (ret__):"p"
               (&per_cpu__current_task));}
      ret__;}
    );
}

static __attribute__ ((noinline))
void __attribute__ ((__section__ (".ref.text")))
__attribute__ ((noinline)) rest_init (void)
{
  init_idle_bootup_task (get_current ());
}
void __attribute__ ((__section__ (".init.text")))
__attribute__ ((no_instrument_function)) start_kernel (void)
{
  rest_init ();
}

