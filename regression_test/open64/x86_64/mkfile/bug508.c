__asm__( 
    ".text\n\t" 
    ".align 4\n\t" 
    ".globl " "ExAcquireFastMutex" "\n\t" 
    ".type " "ExAcquireFastMutex" ",@function" "\n" 
    "ExAcquireFastMutex" ":\n\t" 
    "popl %eax\n\t" 
    "pushl %ecx\n\t" 
    "pushl %eax\n\t" 
    "jmp " "__regs_" "ExAcquireFastMutex" 
    "\n\t.previous" );
