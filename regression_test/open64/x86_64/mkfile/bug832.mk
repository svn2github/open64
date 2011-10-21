build:
	$(CC) -O0 -c $(SRC_DIR)/832-a.c -o $(OUT_DIR)/832-a.o
	gcc -O0 -c $(SRC_DIR)/832-b.c -o $(OUT_DIR)/832-b.o
	gcc $(OUT_DIR)/832-a.o $(OUT_DIR)/832-b.o -o $(BIN)

run:$(BIN)
	$(BIN) > $(OUT_DIR)/$(BASENAME).out.log

compare:$(BIN)
	diff $(SRC_DIR)/$(BASENAME).correct.log $(OUT_DIR)/$(BASENAME).out.log
