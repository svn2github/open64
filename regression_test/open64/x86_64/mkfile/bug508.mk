ASM=$(OUT_DIR)/$(BASENAME).s
out_log=$(OUT_DIR)/$(BASENAME).out.log
build:
	$(CC) -S $(SRC_DIR)/$(BASENAME).c -o $(ASM)

run:$(OBJ)
	$(shell grep ExAcquireFastMutex $(ASM) | wc -l > $(out_log))

compare:$(out_log)
	diff $(SRC_DIR)/$(BASENAME).correct.log $(out_log)
