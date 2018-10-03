

use v6;

use lib 'lib';

use SDL2::Raw;
use SDL2::Window;
use SDL2::Renderer;

die "couldn't initialize SDL2: { SDL_GetError }" if SDL_Init(VIDEO) != 0;

my $window = SDL2::Window.new(:title("Hello, world!"), :flags(OPENGL));
my $render = SDL2::Renderer.new($window);

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
