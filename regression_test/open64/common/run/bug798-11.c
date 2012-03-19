//FLAGS: -O0
int defined_fun()
{
}

int y;
int main()
{

  int t;
  switch(sizeof(t))
    {
    case 4:
      defined_fun();
      break;
    default:
      t?undefined_fun():undefined_fun2();
    }
  return 0;
}
