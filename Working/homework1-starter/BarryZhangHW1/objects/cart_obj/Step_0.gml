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
  if (abs(xSpeed) < deceleration) {
    xSpeed = 0;
  }
  if (abs(ySpeed) < deceleration) {
    ySpeed = 0;
  }
} else {
	// Speeds up the car until max speed when any of the keys are pressed
  if (keyboard_check(vk_left)) {
    xSpeed -= acceleration;
	image_angle = 180;
  }
  if (keyboard_check(vk_right)) {
    xSpeed += acceleration;
	image_angle = 0;
  }
  if (keyboard_check(vk_up)) {
    ySpeed -= acceleration;
	image_angle = 90; 
  }
  if (keyboard_check(vk_down)) {
    ySpeed += acceleration;
	image_angle = 270;
  }
  // Stops accelerating at max speeds
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


// Horizontal collision logic with the bounds of the track 
if (place_meeting(x + xSpeed, y, solid_obj)){
	while(place_meeting(x + sign(xSpeed), y, solid_obj) == false){
		x += sign(xSpeed);
	}
	xSpeed = 0;
}

// Vertical collision logic with the bounds of the track 
if (place_meeting(x, y + ySpeed, solid_obj)){
	while(place_meeting(x, y + ySpeed, solid_obj) == false){
		y += sign(ySpeed);
	}
	ySpeed = 0;
}

//Logic for while the powerup is active
//Plays the song, allows for higher max speed
if (global.powerup_active){
	powerup_duration -= 1;
	max_speed = powerup_speed
	acceleration = 0.75;
	if (!audio_is_playing(powerup)) {
        audio_play_sound(powerup, 10, true);
    }
	show_debug_message(powerup_duration);
	if (powerup_duration <= 0){
		//WHen power up is over, returns to normal max speed and music turns off
		global.powerup_active = false;
		powerup_duration = 10 * room_speed;
		acceleration = 0.25;
		max_speed = default_speed;
		audio_stop_sound(powerup);
		instance_create_layer(544, 192, "Instances_1", power_up_obj);
	}
}

x += xSpeed;
y += ySpeed;