ifeq ($(CC), gcc)
 CORRECT_FILE=$(SRC_DIR)/$(BASENAME).gcc.correct.log
 CMD= cat $(OUT_DIR)/$(BASENAME).s | grep -e "%esi\|%edx" | sed s/^[[:space:]]*//g
else
 CORRECT_FILE=$(SRC_DIR)/$(BASENAME).opencc.correct.log
 CMD= cat $(OUT_DIR)/$(BASENAME).s |  grep -3 %rsi | sed s/^[[:space:]]*[\\\#\|\.].*//g | sed s/[[:space:]]*\\\#.*//g | sed s/^[[:space:]]*//g | sed /^$$/d
endif



build:
	$(CC) -S $(SRC_DIR)/$(BASENAME).c -o $(OUT_DIR)/$(BASENAME).s

run: $(OUT_DIR)/$(BASENAME).s
	$(CMD) > $(OUT_DIR)/$(BASENAME).log


compare:
	diff $(CORRECT_FILE) $(OUT_DIR)/$(BASENAME).log