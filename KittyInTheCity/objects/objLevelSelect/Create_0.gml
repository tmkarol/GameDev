/// @description Set variables

// Set button positions
x = room_width/2 + 250;
y = room_height/2 - 260;

menuX = x;
menuY = y;
buttonH = 50;

// Buttons
button[0] = "1. Apartment Run";
button[1] = "2. City Streets";
button[2] = "3. Sewers";
button[3] = "4. Forest";
button[4] = "5. Fire Escape";
button[5] = "Main Menu";
numButtons = array_length_1d(button);

menuIndex = 0; // index of memu item we are currently on
lastSelected = 0; // Index of previously selected item