##TAG: kernel
ARGS=-fpic -m64 -inline -O0 -g
LDARGS=-shared  -m elf_x86_64 -Wl,-T,$(SRC_DIR)/vdso.lds
build:
	$(CC) $(ARGS) $(SRC_DIR)/vvar.i -c -o $(OUT_DIR)/vvar.o
	$(CC) $(ARGS) $(SRC_DIR)/vclock_gettime.i -c -o $(OUT_DIR)/vclock_gettime.o
	$(CC) -o $(OUT_DIR)/vdso.so.dbg $(LDARGS)  $(OUT_DIR)/vclock_gettime.o $(OUT_DIR)/vvar.o
run:

compare:
