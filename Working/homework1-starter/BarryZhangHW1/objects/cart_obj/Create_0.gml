// Create
acceleration = 0.25;
deceleration = 0.5;
max_speed = 4;
xSpeed = 0;
ySpeed = 0;
powerup_duration = room_speed * 10;
direction = 0;
image_angle = 0;

powerup_speed = 12;
default_speed = 4;

global.powerup_active = false;

cart_obj.origin_x = 0;
cart_obj.origin_y = 0;
	
// Adjust the x and y position of the sprite
x = x + (sprite_width / 2) - (cart_obj.origin_x);
y = y + (sprite_height / 2) - (cart_obj.origin_y);
