/// @description Insert description here
// You can write your code in this editor

layerID = layer_get_id("Environment");
tiles = layer_tilemap_get_id(layerID);

hspeed = 0;
vspeed = 0;
acceleration = 0.25;
deceleration = 0.2;
max_speed = 3;

