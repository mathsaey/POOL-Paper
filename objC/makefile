COMPILER = gcc
OUTPUT-DIR = bin/
RUNTIME = -framework Foundation

CLASSES = $(wildcard *.m)
SOURCES = $(CLASSES:%.m=$(OUTPUT-DIR)%.o)
BINARIES = $(CLASSES:%.m=$(OUTPUT-DIR)%)

main: $(BINARIES)
compile: $(SOURCES)
clean: 
	rm $(OUTPUT-DIR)*

$(OUTPUT-DIR)% : %.m
	$(COMPILER) $< -o $@ $(RUNTIME)

$(OUTPUT-DIR)%.o : %.m
	$(COMPILER) -c $< -o $@
