var xinput = 0;
var yinput = 0;

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

camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0]) / 2, y - camera_get_view_height(view_camera[0]) / 2);