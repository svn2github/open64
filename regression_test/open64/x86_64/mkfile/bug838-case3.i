int i;
int j;
static __inline__ void should_not_exist (void)
{
        i=1;
}

static __inline__ void inline_callee(void) {
       j=2;
}

int main(int argc, char* argv[]){
    inline_callee();
    printf("%d",i+j);
}