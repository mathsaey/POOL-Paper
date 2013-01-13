COMPILER = g++
OUTPUT-DIR = bin/

CLASSES = $(wildcard *.cpp)
SOURCES = $(CLASSES:%.cpp=$(OUTPUT-DIR)%.o)
BINARIES = $(CLASSES:%.cpp=$(OUTPUT-DIR)%)

#Create an executable for every .cpp file
main: directory $(BINARIES)

#Create a .o file for every cpp file (usefull when combining multiple files)
compile: directory $(SOURCES)

#Create the directory if it doesn't exist
directory:
	test -d $(OUTPUT-DIR) || mkdir $(OUTPUT-DIR)

clean: 
	rm $(OUTPUT-DIR)*
	
$(OUTPUT-DIR)% : %.cpp
	$(COMPILER) $< -o $@

$(OUTPUT-DIR)%.o : %.cpp
	$(COMPILER) -c $< -o $@
