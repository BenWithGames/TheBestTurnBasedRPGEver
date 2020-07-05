/// @description Insert description here
// You can write your code in this editors
if (glooberAtbValue < glooberAtbMaxValue)
{
	glooberAtbValue += .4;
}
else 
{
	if (executeCommand)
	{
		// If the option is Attack
		if (textBoxUi.decision == 0)
		{
			if (!reachForward)
			{
				self.y -= 2
				if (self.y <= originalYPos - 20)
				{	
					reachForward = true;
				}
			}
			else
			{
				self.y += 2
	
				if (self.y >= originalYPos)
				{
					reachForward = false;
					glooberAtbValue = 0;
					executeCommand = false;
					enemy.hpValue -= 25;
				}
			}
		}
	}
}


