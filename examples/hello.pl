#!/usr/local/bin/perl

use SGI::GL;
use SGI::FM;

SGI::GL::foreground;
SGI::GL::prefsize 240, 210;
SGI::GL::winopen "Hello";

SGI::GL::gconfig;

SGI::GL::color &SGI::GL::BLACK;
SGI::GL::clear;
SGI::GL::color &SGI::GL::GREEN;
SGI::FM::init;
$font1 = SGI::FM::findfont "Helvetica";
$font25 = SGI::FM::scalefont $font1, 25;
SGI::FM::setfont $font25;
SGI::GL::cmov2i 30, 100;
SGI::FM::prstr "Hello World!";

SGI::GL::qdevice &SGI::GL::ESCKEY;
SGI::GL::qdevice &SGI::GL::REDRAW;

for (;;) {
	($event, $val) = SGI::GL::qread;
	if ($event == &SGI::GL::REDRAW) {
		SGI::GL::reshapeviewport;
		SGI::GL::color &SGI::GL::BLACK;
		SGI::GL::clear;
		SGI::GL::color &SGI::GL::GREEN;
		SGI::GL::cmov2i 30, 100;
		SGI::FM::prstr "Hello World!";
	} elsif ($event == &SGI::GL::ESCKEY && $val == 0) {
		last;
	}
}

SGI::GL::gexit;

exit 0;
