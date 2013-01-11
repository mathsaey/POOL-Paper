COMPILER = g++
OUTPUT-DIR = bin/

CLASSES = $(wildcard *.cpp)
SOURCES = $(CLASSES:%.cpp=$(OUTPUT-DIR)%.o)
BINARIES = $(CLASSES:%.cpp=$(OUTPUT-DIR)%)

main: $(BINARIES)
compile: $(SOURCES)
clean: 
	rm $(OUTPUT-DIR)*

$(OUTPUT-DIR)% : %.cpp
	$(COMPILER) $< -o $@

$(OUTPUT-DIR)%.o : %.cpp
	$(COMPILER) -c $< -o $@
