
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

if (place_meeting(x, y, obj_warp_general))
{
	var currRoom = room_get_name(room);
	//show_debug_message(room_get_name(room));
	show_debug_message("Touched");
	switch(currRoom){
		case "Room2":
			x = 226;
			y = 59;
		break;
		
		case "Room3":
			x = 10;
			y = 60;
		break;
		
		case "Room4":
			x = 107;
			y = 99;
		break;
		
		case "Room5":
			x = 108;
			y = 6;
		break;
		
	}
	room_goto(Room1);
}

if(shake)
{
	var range = 1.5;
	camera_set_view_pos(view_camera[0], view_x+random_range(-range,range),view_y+random_range(-range,range));
}
else{
	camera_set_view_pos(view_camera[0],view_x,view_y);
}


input_interact = keyboard_check_pressed(ord("E"));

if(input_interact){
	if (myTextbox == noone){
		var inst = collision_rectangle(x- radius, y - radius, x + radius, y + radius, obj_message, false, false);
		if(inst != noone){
			show_debug_message("Interacting");
			with(inst){
				show_debug_message("Interacting");
				myTextbox = instance_create_layer(68,86,"Instances",obj_textbox);
//				myTextbox.text = myText;
			}
		}
	else{
		if(!instance_exists(myTextbox)){
			myTextbox = noone;
		}
	}
	}
}