
// step event
// check if player is on ground
if (place_meeting(x, y+1, solid_obj)) {
	while (!place_meeting(x, y+1, solid_obj)) {
        y++;
	}
    can_jump = true; // allow jump if on ground
} else {
    can_jump = false; // disallow jump if not on ground
}

// check for jump input
if (keyboard_check(vk_space)) {
    // set jump flag if not already set and player is on the ground
    if (!jump_pressed && can_jump) {
        jump_pressed = true;
        jump_released = false;
        jump_time = 0;
        vspeed = jump_speed_min;
    }
    // increment jump time if jump is held down
    if (jump_pressed && !jump_released) {
        jump_time += 1;
    }
}
// reset jump flag if jump is released
if (keyboard_check_released(vk_space)) {
    jump_pressed = false;
    jump_released = true;
}

// apply gravity
if (!can_jump) {
    vspeed += gravity;
}

// limit jump height based on jump time
if (jump_time > 0 && jump_time < 10) {
    vspeed = jump_speed_min + (jump_speed_max - jump_speed_min) * (jump_time / 10);
}