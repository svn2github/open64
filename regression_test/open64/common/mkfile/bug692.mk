CXXFLAGS := -W -Wall -Wimplicit -Wimplicit -Wswitch -Wformat -Wchar-subscripts -Wparentheses -Wmultichar -Wtrigraphs -Wpointer-arith -Wcast-align -Wreturn-type -Wno-unused-function -ansi -pedantic -Wshadow -Wold-style-cast $(CXXFLAGS)

#if !TYPE
TYPE=float
#endif

build:
	$(CXX)  $(CXXFLAGS) -DTYPE=$(TYPE) -c $(SRC_DIR)/$(BASENAME).C

run:

compare:
