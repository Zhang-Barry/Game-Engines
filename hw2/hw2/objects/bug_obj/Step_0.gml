/// @description Insert description here
// You can write your code in this editor

if switch_delay == 0{
	
	if image_angle = 15{
		image_angle = -15;
	}
	else{
		image_angle = 15;
	}
	switch_delay = 10;
}
else{
	switch_delay -= 1;
}

if place_meeting(x,y,player_obj){
	instance_destroy();
	global.bugs_eaten += 1;
}
