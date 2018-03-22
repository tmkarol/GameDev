if (!ducking) {
	if (doubleClick == 0) {
		xVelocity = walkVelocity;
		doubleClick = 1;
	    alarm[0] = 10;
	}
	else {
	    xVelocity = runVelocity;
		running = true;
	}
}