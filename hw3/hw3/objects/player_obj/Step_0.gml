
//get keyboard input and save it into a local variable
var xinput = 0;
var yinput = 0;
var is_jumping = false;


if (keyboard_check(ord("A"))) {
	xinput -= 1;	
}
if (keyboard_check(ord("D"))) {
	xinput += 1;	
}


var jump = 0;
var jump_duration = 0;

show_debug_message(jump_frame_count);

if(keyboard_check(ord("W")) && (!jump_frame_count < long_jump_max_frames)){
	if (jump_frame_count < jump_max_frames) {
		jump = jump_strength;
	}
	else if (jump_frame_count < long_jump_max_frames) {
		jump = long_jump_strength;
	}
	jump_frame_count++;
}

else{
	jump_frame_count = jump_frame_count + 1;
}
//show_debug_message(is_falling);
//show_debug_message(jump);

var vaccel = 0; var haccel = 0;

vaccel += m_grav - jump;

haccel += xinput * m_xspeed;

if (xinput == 0){
	haccel += m_hdrag * -m_hvel;
}

m_vvel += vaccel;
m_hvel += haccel;

m_vvel = clamp (m_vvel, -m_maxYspeed, m_maxYspeed);
m_hvel = clamp (m_hvel,-m_maxXspeed, m_maxXspeed);

MoveX(m_hvel);
if (MoveY(m_vvel)) {
	//m_vvel = -m_vvel * m_restitution;
	is_falling = false;
	jump_frame_count = 0;
}
else{
	is_falling = true;
}

//change the sprite direction based on our input
if (xinput > 0) {
	image_xscale = 1;
} else if (xinput < 0) {
	image_xscale = -1;
}

//loop the object
if (y > room_height + sprite_height) {
	y -= (room_height + sprite_height);	
}
