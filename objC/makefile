COMPILER = g++
OUTPUT-DIR = bin/
BINARY-NAME = main
RUNTIME = -framework Foundation

CLASSES = $(wildcard *.m)
SOURCES = $(CLASSES:%.cpp=$(OUTPUT-DIR)%.o)

main: $(SOURCES)
	$(COMPILER) $(SOURCES) -o $(BINARY-NAME) $(RUNTIME)

clean: 
	rm $(OUTPUT-DIR)*
	rm $(main)

$(OUTPUT-DIR)%.o : %.cpp
	$(COMPILER) -c $< -o $@
