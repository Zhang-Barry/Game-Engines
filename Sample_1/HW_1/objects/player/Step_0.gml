/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_nokey)) {
  // No keys are pressed, decelerate the car
  if (hspeed > 0) {
    hspeed -= deceleration;
  } else if (hspeed < 0) {
    hspeed += deceleration;
  }
  if (vspeed > 0) {
    vspeed -= deceleration;
  } else if (vspeed < 0) {
    vspeed += deceleration;
  }
  // Make sure the car doesn't go below 0 speed
  if (abs(hspeed) < deceleration) {
    hspeed = 0;
  }
  if (abs(vspeed) < deceleration) {
    vspeed = 0;
  }
} else {
  // A directional key is pressed, accelerate the car in that direction
  if (keyboard_check(vk_left)) {
    hspeed -= acceleration;
  }
  if (keyboard_check(vk_right)) {
    hspeed += acceleration;
  }
  if (keyboard_check(vk_up)) {
    vspeed -= acceleration;
  }
  if (keyboard_check(vk_down)) {
    vspeed += acceleration;
  }
  // Make sure the car doesn't exceed the maximum speed
  if (hspeed > max_speed) {
    hspeed = max_speed;
  }
  if (hspeed < -max_speed) {
    hspeed = -max_speed;
  }
  if (vspeed > max_speed) {
    vspeed = max_speed;
  }
  if (vspeed < -max_speed) {
    vspeed = -max_speed;
  }
}


// Move the car
// Move the car
x += hspeed;
y += vspeed;