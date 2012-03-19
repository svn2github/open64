//FLAGS: -O0
int defined_fun()
{
}

int main()
{

  int t;
  switch(sizeof(t)+1)
    {
    case 2:
      undefined_fun2();
      break;
    case 5:
      defined_fun();
      break;
    case 9:
      undefined_fun3();
    default:
      undefined_fun();
    }
  return 0;
}
