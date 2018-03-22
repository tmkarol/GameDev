/// @description Set variables

global.pause = 0; // boolean to check if the game is paused

// Set button positions
x = room_width/2;
y = room_height/2;

buttonH = 50;

// Buttons
button[0] = "Continue";
button[1] = "Save";
button[2] = "Main Menu";
numButtons = array_length_1d(button);

menuIndex = 0; // index of memu item we are currently on
lastSelected = 0; // Index of previously selected item