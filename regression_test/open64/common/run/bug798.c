//TAG: kernel
//FLAGS: -O0
int defined_fun()
{
}

int main()
{

  int t;
  switch(sizeof(t))
    {
    case 4:
      defined_fun();
      break;
    default:
      undefined_fun();
    }
  return 0;
}
