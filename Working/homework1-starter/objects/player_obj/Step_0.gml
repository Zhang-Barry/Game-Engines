/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_nokey)) {
  // No keys are pressed, decelerate the car
  if (xSpeed > 0) {
    xSpeed -= deceleration;
  } else if (xSpeed < 0) {
    xSpeed += deceleration;
  }
  if (ySpeed > 0) {
    ySpeed -= deceleration;
  } else if (ySpeed < 0) {
    ySpeed += deceleration;
  }
  // Make sure the car doesn't go below 0 speed
  if (abs(xSpeed) < deceleration) {
    xSpeed = 0;
  }
  if (abs(ySpeed) < deceleration) {
    ySpeed = 0;
  }
} else {
  // A directional key is pressed, accelerate the car in that direction
  if (keyboard_check(vk_left)) {
    xSpeed -= acceleration;
	image_index = 3;
  }
  if (keyboard_check(vk_right)) {
    xSpeed += acceleration;
	image_index = 1;

  }
  if (keyboard_check(vk_up)) {
    ySpeed -= acceleration;
	image_index = 2;
  }
  if (keyboard_check(vk_down)) {
    ySpeed += acceleration;
	image_index = 4;

  }
  // Make sure the car doesn't exceed the maximum speed
  if (xSpeed > max_speed) {
    xSpeed = max_speed;
  }
  if (xSpeed < -max_speed) {
    xSpeed = -max_speed;
  }
  if (ySpeed > max_speed) {
    ySpeed = max_speed;
  }
  if (ySpeed < -max_speed) {
    ySpeed = -max_speed;
  }
}


if (place_meeting(x + xSpeed, y, solid_obj)){
    // Handle collision logic here
	while(place_meeting(x + sign(xSpeed), y, solid_obj) == false){
		x += sign(xSpeed);
	}
	xSpeed = 0;
}

if (place_meeting(x, y + ySpeed, solid_obj)){
    // Handle collision logic here
	while(place_meeting(x, y + ySpeed, solid_obj) == false){
		y += sign(ySpeed);
	}
	ySpeed = 0;
}

x += xSpeed;
y += ySpeed;