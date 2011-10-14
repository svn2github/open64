ASM=$(OUT_DIR)/$(BASENAME).s
out_log=$(OUT_DIR)/$(BASENAME).out.log
build:
	$(CC) -O3 -S $(SRC_DIR)/$(BASENAME).c -o $(ASM)

run:$(OBJ)
	$(shell grep movd $(ASM) | wc -l > $(out_log))

compare:$(out_log)
	diff $(SRC_DIR)/$(BASENAME).correct.log $(out_log)
