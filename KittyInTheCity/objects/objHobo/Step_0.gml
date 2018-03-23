if (global.pause) { exit; } // If game is paused, pause
x += xVelocity;
if (x < xprevious) image_xscale = 1;
if (x > xprevious) image_xscale = -1;