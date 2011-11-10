//FLAGS: -O0
//TAG: kernel
struct in6_addr
{
 union
 {
   unsigned char u6_addr8[16];
   unsigned short u6_addr16[8];
   unsigned int u6_addr32[4];
 } in6_u;
};

extern const struct in6_addr in6addr_any;

static const struct ip6addrlbl_init_table
{
  const struct in6_addr *prefix;
  int prefixlen;
  unsigned int label;
} array_table[] = {
  {
    .prefix = &in6addr_any,
    .label = 1,
  },
  {
    .prefix = &(struct in6_addr){{{ 0xfc }}},
    .prefixlen = 7,
    .label = 5,
  } 
};
const struct in6_addr *a=&(struct in6_addr){{{ 0xfc }}};
int main()
{
  printf("%x\n",array_table[0].prefix);
  printf("%d\n",array_table[1].prefixlen);
  printf("%x\n",*a);
  return 0;
}
