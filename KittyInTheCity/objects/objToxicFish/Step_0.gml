if (global.pause) { exit; }
y += yVelocity;
yVelocity += 1;
if (y > startPosition) yVelocity = 0;
if (y < yprevious) image_yscale = 1;
if (y > yprevious) image_yscale = -1;