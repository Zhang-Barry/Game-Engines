/// @description Insert description here
// You can write your code in this editor
  // A directional key is pressed, accelerate the car in that direction
if (keyboard_check(vk_left)) {
hspeed = -2;
}
if (keyboard_check(vk_right)) {
hspeed = 2;
}
if (keyboard_check(vk_up)) {
vspeed = 2;
}
if (keyboard_check(vk_down)) {
vspeed = -2;
}
  // Make sure the car doesn't exceed the maximum speed

if (place_meeting(x + hspeed, y, obj_solid)){
    // Handle collision logic here
	while(place_meeting(x + sign(hspeed), y, obj_solid)){
		x += sign(hspeed);
	}
	hspeed = 0;
}

if (place_meeting(x, y + vspeed, obj_solid)){
    // Handle collision logic here
	while(place_meeting(x, y + vspeed, obj_solid)){
		y += sign(vspeed);
	}
	vspeed = 0;
}

// Move the car
x += hspeed;
y += vspeed;