var xinput = 0;
var yinput = 0;

if (global.game_end == false){
	if (keyboard_check(ord("W"))) {
		yinput -= 1;
	}

	if (keyboard_check(ord("S"))) {
		yinput += 1;
	}

	if (keyboard_check(ord("D"))) {
		xinput += 1;
	}

	if (keyboard_check(ord("A"))) {
		xinput -= 1;
	}

	MoveX(xinput * movespeed);
	MoveY(yinput * movespeed);


	if (global.timon_recruited){
		timon_walking_obj.visible = true;
	}

	if (global.pumbaa_recruited){
		pumbaa_walking_obj.visible = true;
	}

	if (timer > 0) {
		timer--;
	}
	
	pumbaa_walking_obj.y = y - 3;
	timon_walking_obj.y = y + 20;
	camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0]) / 2, y - camera_get_view_height(view_camera[0]) / 2);
}
else{
	visible = false;	
}