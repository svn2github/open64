build:
	$(CC) -O0 $(SRC_DIR)/$(BASENAME).c -o $(BIN)
run:
	$(shell $(BIN))

compare:
