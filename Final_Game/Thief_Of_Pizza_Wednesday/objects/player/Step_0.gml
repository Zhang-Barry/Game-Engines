
//get keyboard input and save it into a local variable
var xinput = 0;
var yinput = 0;

if (keyboard_check(ord("A"))) {
	xinput -= 1;	
}
if (keyboard_check(ord("D"))) {
	xinput += 1;	
}

if (keyboard_check(ord("W"))) {
	yinput -= 1;	
}
if (keyboard_check(ord("S"))) {
	yinput += 1;	
}

MoveX(xinput * m_xspeed);
MoveY(yinput * m_yspeed);