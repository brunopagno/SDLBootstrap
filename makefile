PROJECTNAME=anovaders
SOURCES=src/
OUTPUT=build/

all:
	g++ $(SOURCES)main.cpp -Isdl/include/SDL2 -Lsdl/lib -lSDL2 -lSDL2Main -o $(OUTPUT)$(PROJECTNAME)
