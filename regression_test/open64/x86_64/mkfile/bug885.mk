ifeq ($(CC),gcc)
  CFLAG=-O2 -m64
else
  CFLAG=-O2 -WOPT:prop_cse -m64
endif
build:$(SRC_DIR)/bug885.c
	$(CC) $(CFLAG) -S $(SRC_DIR)/bug885.c -o $(OUT_DIR)/bug885.s
run:$(OUT_DIR)/bug885.s
	grep movslq $(OUT_DIR)/bug885.s | wc -l > $(OUT_DIR)/bug885.log
compare:$(OUT_DIR)/bug885.log
	diff $(SRC_DIR)/bug885.correct.log $(OUT_DIR)/bug885.log