/// @description Insert description here
// You can write your code in this editor


if(keyboard_check(ord("E"))){
	if(keyboard_key_release(ord("E"))){
		currAmount += 25;
	}
}
	
image_xscale = currAmount/maxSize;