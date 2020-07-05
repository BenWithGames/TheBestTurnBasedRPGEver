/// @description Insert description here
// You can write your code in this editor

if (hpValue > 0)
{
	if (atbValue < 100)
	{
		atbValue += .3;
	}
	else
	{
		if (!reachForward)
		{
			self.y += 2;
			if (self.y >= 20)
				reachForward = true;
		}
		else
		{
			self.y -= 2
			if (self.y <= 0)
			{
				reachForward = false;
				gloober.glooberHpValue -= dmgValues;
				atbValue = 0;
			}
		}
	}
}
else 
{
	room_goto(room_forest);
}
