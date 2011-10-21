build:
	$(CC) -O0 -S $(SRC_DIR)/$(BASENAME).c -o $(OUT_DIR)/$(BASENAME).s

run: $(OUT_DIR)/$(BASENAME).s
	$(shell sed -n '/^main/,/^\.code16gcc/p' $(OUT_DIR)/$(BASENAME).s | grep -v '^[[:space:]]*#' | grep -v ^$ > $(OUT_DIR)/$(BASENAME).log)

compare:
	diff $(SRC_DIR)/$(BASENAME).correct.log $(OUT_DIR)/$(BASENAME).log