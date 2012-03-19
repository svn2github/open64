//FLAGS: -O0
int defined_fun()
{
}

int main()
{

  int t;
  switch(sizeof(t))
    {
    case 1:
      undefined_fun2();
      break;
    case 4:
      defined_fun();
      break;
    case 8:
      undefined_fun3();
    default:
      undefined_fun();
    }
  return 0;
}
