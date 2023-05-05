/// @description Insert description here
// You can write your code in this editor
var message = "You still have " + string(9 - global.bugs_eaten) + " bugs left"

draw_self();

if (place_meeting(x,y,player_obj)){
	if (global.bugs_eaten == 9){
		global.game_end = true;
		audio_stop_all();
		instance_destroy();
	}
	else{
		draw_text(x - 50, y - 15, message);
	}
}
