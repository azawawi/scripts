

use v6;

use SDL2::Raw;

class SDL2::Window {
  
}

class SDL2::Renderer {
  has $.renderer;

  method new($window, int32 $index, int32 $flags) {
    my $renderer = SDL_CreateRenderer($window, $index, $flags);
    return self.bless(:renderer($renderer));
  }

  method draw-color(int8 $r, int8 $g, int8 $b, int8 $a) {
    SDL_SetRenderDrawColor($!renderer, $r, $g, $b, $a);
  }
  
  method clear {
    SDL_RenderClear($!renderer);
  }
  
  method present {
    SDL_RenderPresent($!renderer);
  }
  
  method fill-rect(SDL_Rect $rect) {
    SDL_RenderFillRect($!renderer,  $rect);
  }
}

use SDL2::Raw;

die "couldn't initialize SDL2: { SDL_GetError }" if SDL_Init(VIDEO) != 0;

my $window = SDL_CreateWindow("Hello, world!",
        SDL_WINDOWPOS_CENTERED_MASK, SDL_WINDOWPOS_CENTERED_MASK,
        800, 600, OPENGL);
my $render = SDL2::Renderer.new($window, -1, ACCELERATED +| PRESENTVSYNC);

my $event = SDL_Event.new;

main: loop {
    $render.draw-color(0, 0, 0, 0);
    $render.clear;

    while SDL_PollEvent($event) {
        if $event.type == QUIT {
            last main;
        }
    }

    $render.draw-color(255, 255, 255, 255);
    $render.fill-rect(
        SDL_Rect.new(
            2 * min(now * 300 % 800, -now * 300 % 800),
            2 * min(now * 470 % 600, -now * 470 % 600),
        sin(3 * now) * 50 + 80, cos(4 * now) * 50 + 60));

    $render.present;
}
SDL_Quit();


say "Hello world, SDL";
