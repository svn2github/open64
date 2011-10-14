//OBJ
//FLAGS: -O3
typedef struct S1 {
  float f[2];
} S1;
S1 operator/ (S1 a, float b)  { }
struct S2 {
  void copy(const S2& v) {
    for (int i = 0; i < 10; i++)
      t[i] = v[i];
  }
  S1 operator[](int index) const {
    return t[index];
  }
  void div(const S2& a, float& b) {
    for (int i = 0; i < 10; i++)
      t[i] = a.t[i] / b;
  }
  S1 t[10];
};

class C1 {
 public:
  const C1& operator=(const C1& c) {
    S2& t = (*this).s;
    t.copy(c.s);
  }
  S2 s;
};

C1 operator/(C1& a, float& b) {
  C1 c;
  (c.s).div(a.s, b);
  return c;
}
class C2 {
  C1 temp1;
  void func1();
};
void C2::func1(){
  float f2;
  temp1 = temp1/f2;
}
