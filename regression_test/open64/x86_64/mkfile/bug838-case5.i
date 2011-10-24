int i;
int j;
static __inline__ void internal_callee(void) {
       j = 2;
}

static void blocker(void) {
       internal_callee();
       i+=1;
}

static __inline__ void should_not_exist (void)
{
        blocker();
        i=1;
}
