
use v6;
use SDL2::Raw;

unit class SDL2::Renderer;

use SDL2::Window;
  
has $.renderer;

method new(
  SDL2::Window $window,
  int32 :$index = -1,
  int32 :$flags = ACCELERATED +| PRESENTVSYNC) {

  my $renderer = SDL_CreateRenderer($window.window, $index, $flags);
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
