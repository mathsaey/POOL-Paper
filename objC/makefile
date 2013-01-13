COMPILER = gcc
OUTPUT-DIR = bin/
RUNTIME = -framework Foundation

CLASSES = $(wildcard *.m)
SOURCES = $(CLASSES:%.m=$(OUTPUT-DIR)%.o)
BINARIES = $(CLASSES:%.m=$(OUTPUT-DIR)%)

#Create an executable for every .cpp file
main: directory $(BINARIES)

#Create a .o file for every cpp file (usefull when combining multiple files)
compile: directory $(SOURCES)

#Create the directory if it doesn't exist
directory:
	test -d $(OUTPUT-DIR) || mkdir $(OUTPUT-DIR)

clean: 
	rm $(OUTPUT-DIR)*

$(OUTPUT-DIR)% : %.m
	$(COMPILER) $< -o $@ $(RUNTIME)

$(OUTPUT-DIR)%.o : %.m
	$(COMPILER) -c $< -o $@
