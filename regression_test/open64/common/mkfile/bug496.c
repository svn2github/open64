int __attribute__((visibility("hidden"))) hidden_v1;
int not_hidden_v1;

#pragma GCC visibility push(hidden)
int hidden_v2;
#pragma GCC visibility pop
int not_hidden_v2;
