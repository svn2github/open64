ifeq ($(CC),gcc)
 ARGS=
else
 ARGS=-m elf_i386
endif
build:
	$(CC) $(ARGS) -O0 -m32 $(SRC_DIR)/782-a.c -c -o $(OUT_DIR)/782-a.o
	$(CC) $(ARGS) -O0 -m32 $(SRC_DIR)/782-b.c -c -o $(OUT_DIR)/782-b.o
	$(CC) -o $(OUT_DIR)/a.so -m elf_i386 -O0 -m32 $(OUT_DIR)/782-a.o $(OUT_DIR)/782-b.o -shared -nostdlib
run:
	$(shell grep warning $(OUT_DIR)/$(BASENAME).mk.ci > $(OUT_DIR)/$(BASENAME).out.log)

compare:
	diff $(SRC_DIR)/$(BASENAME).correct.log $(OUT_DIR)/$(BASENAME).out.log