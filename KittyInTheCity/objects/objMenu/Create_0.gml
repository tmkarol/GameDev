/// @description Set variables

// Set button positions
x = room_width/2 + 250;
y = room_height/2 - 210;

menuX = x;
menuY = y;
buttonH = 50;

// Buttons
button[0] = "New Game";
button[1] = "Load Game";
button[2] = "Level Select";
button[3] = "Music";
button[4] = "Exit";
numButtons = array_length_1d(button);

menuIndex = 0; // index of memu item we are currently on
lastSelected = 0; // Index of previously selected item