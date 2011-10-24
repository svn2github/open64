int i;
int j;
static void internal_callee(void) {
       j = 2;
}
static __inline__ void
should_not_exist (void)
{
        internal_callee();
        i=1;
}
