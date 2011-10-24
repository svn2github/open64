out_log=$(OUT_DIR)/$(BASENAME).out.log
OBJ=$(OUT_DIR)/$(BASENAME).o
build:
	$(CC) -O0 -c $(SRC_DIR)/bug838-case5.i -o $(OBJ)

run:$(OBJ)
	$(shell readelf -s $(OBJ) | grep FUNC | wc -l > $(out_log))

compare:$(out_log)
	diff $(SRC_DIR)/$(BASENAME).correct.log $(out_log)
