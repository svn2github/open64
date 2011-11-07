// CMD: $(CC) -O2  $(SOURCE) -o $(TARGET)
// OBJ
typedef volatile struct foo
{
    int elem;
} foo;


int main()
{
    foo *p1, *p2;

    p1 = (foo *)0x1000;
    p2 = (foo *)0x1000;
    return (p1->elem == p2->elem);
}
