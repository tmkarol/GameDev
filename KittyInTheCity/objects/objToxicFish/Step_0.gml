/// @description Insert description here
// You can write your code in this editor

if (global.pause) { exit; } // If game is paused, pause
y += yvelocity
yvelocity += 1
if (y > startingpos) yvelocity = 0

if (y < yprevious) image_yscale = 1;
if (y > yprevious) image_yscale = -1;