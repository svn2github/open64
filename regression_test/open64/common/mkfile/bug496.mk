OBJ=$(OUT_DIR)/$(BASENAME).o
out_log=$(OUT_DIR)/$(BASENAME).out.log
build:
	$(CC) -c $(SRC_DIR)/$(BASENAME).c -o $(OBJ)

run:$(OBJ)
	$(shell readelf -s $(OBJ) | grep HIDDEN | wc -l > $(out_log))

compare:$(out_log)
	diff $(SRC_DIR)/$(BASENAME).correct.log $(out_log)
