/// @description Insert description here
// You can write your code in this editor

draw_self();

if (global.timon_recruited){
	if (timer < 8000) && (timer > 7500){
		draw_text(x - 25 ,y - 25, "We should probably");
		draw_text(x - 25 ,y - 15, "find Pumbaa too",);
	}
}


if (global.game_end){
	visible = false;	
}