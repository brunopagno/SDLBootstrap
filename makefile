PROJECTNAME=sdlbootstrap
CC=g++
SOURCEDIR=src/
OUTPUTDIR=build/
INCLUDE_PATHS=-Isdl/include/SDL2 -Isdlmixer/include/SDL2 -Isdlnet/include/SDL2 -Isdlttf/include/SDL2
LIBRARY_PATHS=-Lsdl/lib -Lsdlimage/lib -Lsdlmixer/lib -Lsdlnet/lib -Lsdlttf/lib
COMPILER_FLAGS=-Wall
LINKER_FLAGS=-lSDL2 -lSDL2Main -lSDL2_image -lSDL2_mixer -lSDL2_net -lSDL2_ttf

all:
	$(CC) $(SOURCEDIR)main.cpp $(INCLUDE_PATHS) $(LIBRARY_PATHS) $(COMPILER_FLAGS) $(LINKER_FLAGS) -o $(OUTPUTDIR)$(PROJECTNAME)
