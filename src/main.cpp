#include<cstdio>
#include"SDL.h"

#ifdef main
#undef main
#endif

int main(int argc, char **argv) {
	bool running = true;
	SDL_Window *window = NULL;
	SDL_Event event;

	SDL_Init(SDL_INIT_VIDEO);

	window = SDL_CreateWindow(
		"SDL window",
		SDL_WINDOWPOS_UNDEFINED,
		SDL_WINDOWPOS_UNDEFINED,
		1026,
		680,
		SDL_WINDOW_SHOWN
	);
	if(window == NULL) {
		printf("Could not create window: %s\n", SDL_GetError());
		return 1;
	}

    while(running) {
		while(SDL_PollEvent(&event) != 0) {
			if (event.type == SDL_QUIT) {
				running = false;
			}
		}
	}

	SDL_DestroyWindow(window);
	SDL_Quit();
	return 0;
}
