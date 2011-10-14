ifeq ($(CXX), g++)
 OPTIONS=-m32 -fomit-frame-pointer $(CXXFLAGS)
else
 OPTIONS=-m32 $(CXXFLAGS)
endif

build:
	$(CXX) $(OPTIONS) $(SRC_DIR)/$(BASENAME).cxx $(SRC_DIR)/help.cxx -o $(BIN) 

run: $(BIN)
	LD_LIBRARY_PATH=$(TOOLROOT)/lib/gcc-lib/x86_64-open64-linux/4.2/32/ $(BIN)

compare:

