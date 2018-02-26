// update x position
x = x + xVelocity;

// update y position
if (jumping) {
	y = y + jumpVelocity;
	jumpVelocity = jumpVelocity + grav;
}
