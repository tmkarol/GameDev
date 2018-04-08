/// @description Set variables

// Set button positions
x = room_width/2 + 250;
y = room_height/2 - 210;

menuX = x;
menuY = y;
buttonH = 50;

// Set control positions
controlX = menuX;
controlY = menuY + 285;
controlH = 30;

// Buttons
button[0] = "New Game";
button[1] = "Load Game";
button[2] = "Level Select";
button[3] = "Music";
button[4] = "Exit";
numButtons = array_length_1d(button);

menuIndex = 0; // index of memu item we are currently on
lastSelected = 0; // Index of previously selected item

// Control instructions
control[0] = "a - move left";
control[1] = "d - move right";
control[2] = "w - jump";
control[3] = "s - duck";
control[4] = "shift - hiss";
control[5] = "space - scratch";
control[6] = "esc - pause";
numControls = array_length_1d(control);

// Play music
//audio_play_sound(sndMenuMusic, 10, true);