//TAG:kernel
void *  per_cpu__current_task;

int main(void)
{
  void * ret__;
  asm volatile ("mov" "q ""%%""gs"":%P" "1"",%0" : "=r" (ret__) : "i" (&per_cpu__current_task));
  return 0;
}
