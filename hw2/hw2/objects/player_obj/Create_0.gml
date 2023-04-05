movespeed = 4;			//default 0.75

xRemainder = 0.0;
yRemainder = 0.0;
image_index = 0;
audio_play_sound(Hakuna_Matata_Audio,1,true);

global.timon_recruited = false
global.pumbaa_recruited = false;

timer = 3000;

function MoveX(amount)
{
	xRemainder += amount;
	var move = round(xRemainder);
	if (move != 0)
	{
		xRemainder -= move;
		var dir = sign(move);
		while (move != 0)
		{ 
			if (!place_meeting(x + dir, y, wall_obj))
			{
				x += dir;
				move -= dir;
				image_index += 0.05;		// default 0.15
				pumbaa_walking_obj.image_index += 0.05;
				timon_walking_obj.image_index += 0.05;

			}
			else //collided with something
			{
				break;
			} 
		}
		if (dir < 0){
			image_xscale = -1;
			timon_walking_obj.image_xscale = -1;
			pumbaa_walking_obj.image_xscale = -1;
			
			pumbaa_walking_obj.x = x + 35;
			timon_walking_obj.x = x + 58;
		}
		else{
			image_xscale = 1;
			timon_walking_obj.image_xscale = 1;
			pumbaa_walking_obj.image_xscale = 1;
			pumbaa_walking_obj.x = x - 30;
			timon_walking_obj.x = x - 60;
	}
	}
}

function MoveY(amount)
{
	yRemainder += amount;
	var move = round(yRemainder);
	if (move != 0)
	{
		yRemainder -= move;
		var dir = sign(move);
		while (move != 0)
		{ 
			if (!place_meeting(x, y + dir, wall_obj))
			{
				y += dir;
				move -= dir;
				image_index += 0.05;		// default 0.15
				pumbaa_walking_obj.image_index += 0.05;
				timon_walking_obj.image_index += 0.05;
			}
			else //collided with something
			{
				break;
			} 
		}
	} 
}