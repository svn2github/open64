//OBJ
int g = 0x10;
int *volatile h = &g;

int f(){
  while (1)
    if (*h) continue;
}
