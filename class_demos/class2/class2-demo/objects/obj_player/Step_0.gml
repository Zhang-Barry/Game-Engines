var xinput = 0;
var yinput = 0;

if (keyboard_check(ord("W"))){
	yinput -= 1;	
}

if (keyboard_check(ord("S"))){
	yinput += 1	
}

if (keyboard_check(ord("D"))){
	xinput += 1;	
}

if (keyboard_check(ord("A"))){
	xinput -= 1;	
}


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
        //There is no Solid immediately beside us 
        x += sign; 
        move -= sign; 
      } 
      else 
      { 
        //Hit a solid!
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
        //There is no Solid immediately beside us 
        y += sign; 
        move -= sign; 
      } 
      else 
      { 
        //Hit a solid!
        break; 
      } 
    } 
  } 
}

MoveX(xinput * movespeed);
MoveY(yinput * movespeed);