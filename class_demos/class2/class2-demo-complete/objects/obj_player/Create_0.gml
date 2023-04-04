movespeed = 0.75;

xRemainder = 0.0;
yRemainder = 0.0;

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
			if (!place_meeting(x + dir, y, obj_wall))
			{
				x += dir;
				move -= dir;
			}
			else //collided with something
			{
				break;
			} 
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
			if (!place_meeting(x, y + dir, obj_wall))
			{
				y += dir;
				move -= dir;
			}
			else //collided with something
			{
				break;
			} 
		}
	} 
}