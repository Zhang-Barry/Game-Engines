/// @description Insert description here
// You can write your code in this editor
draw_self();


draw_text(x, y, "FPS: " + string(fps_real));

if (timer > 2500 && timer < 2750){
	draw_text(x - 150 ,y - 15, "Simba - I'm the king of the jungle!");
}
