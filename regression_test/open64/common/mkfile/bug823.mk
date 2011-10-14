build:
	$(CC) -O1 -fpic $(SRC_DIR)/$(BASENAME).c -o $(BIN)
run:$(BIN)
	$(BIN)

compare:$(BIN)

