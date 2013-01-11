COMPILER = g++
OUTPUT-DIR = bin/
BINARY-NAME = main

CLASSES = $(wildcard *.cpp)
SOURCES = $(CLASSES:%.cpp=$(OUTPUT-DIR)%.o)

main: $(SOURCES)
	$(COMPILER) $(SOURCES) -o $(BINARY-NAME)

clean: 
	rm $(OUTPUT-DIR)*
	rm $(main)

$(OUTPUT-DIR)%.o : %.cpp
	$(COMPILER) -c $< -o $@
