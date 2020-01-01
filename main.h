#ifndef _MAIN_H_
#define _MAIN_H_

#include <SDL/SDL.h>

#define SCREEN_WIDTH	320
#define SCREEN_HEIGHT	240
#define SCREEN_BPP	32

extern SDL_Surface *screen;
extern SDL_Surface *image;
extern SDL_Joystick *joy;

int initSDL();
void cleanSDL();
SDL_Surface *loadImage(char *fileName);
void applySurface(SDL_Surface *source, SDL_Surface *destination, int x, int y, SDL_Rect *clip);
int updateScreen();
void input();

#endif /* _MAIN_H_ */