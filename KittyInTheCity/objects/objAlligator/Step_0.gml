if (global.pause) { exit; }
x += xVelocity;
if (x < xprevious) image_xscale = -1;
if (x > xprevious) image_xscale = 1;