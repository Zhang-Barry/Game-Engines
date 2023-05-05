function MoveX(amount)
{
	m_xRemainder += amount;
	var move = floor(m_xRemainder);
	if (move != 0)
	{
		m_xRemainder -= move;
		var mySign = sign(move);
		
		while(move != 0)
		{
			if (!place_meeting(x + mySign, y, solid_obj))
			{
				x += mySign;
				move -= mySign;
			}
			else
			{
				//hit something!
				return true;
			}
		}
	}
	return false;
}