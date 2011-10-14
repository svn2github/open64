build:
	$(CC) $(SRC_DIR)/$(BASENAME).c -o $(BIN)
run:
	$(shell $(BIN))

compare:
