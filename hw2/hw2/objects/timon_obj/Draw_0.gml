/// @description Insert description here
// You can write your code in this editor

draw_self();

if(camera_get_view_x(view_camera[0]) < x|| camera_get_view_y(view_camera[0]) > y){
	draw_text(x,y - 50,"Hello!");
	draw_text(x,y - 25,"You found me!!");
}
