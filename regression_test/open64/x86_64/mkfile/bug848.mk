build:
	$(CC) -O2 $(SRC_DIR)/$(BASENAME).c $(SRC_DIR)/a.lds -o $(BIN) 

run: $(BIN)
	$(BIN) > $(OUT_DIR)/$(BASENAME).log

compare:
	diff $(SRC_DIR)/$(BASENAME).correct.log $(OUT_DIR)/$(BASENAME).log