//FLAGS: -O0
int defined_fun()
{
}

int main()
{

  int t;
  int size=sizeof(t);
  switch(size)
    {
    case 4:
      defined_fun();
      break;
    default:
      undefined_fun();
    }
  return 0;
}
