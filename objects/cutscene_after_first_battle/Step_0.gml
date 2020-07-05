/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(cutscene_into_first_battle))
{
	switch (currentStep)
	{
		// Start text after the fight
		case 0:
			if (myTextbox == noone)
			{
				myTextbox = instance_create_layer(x, y, "Textbox", obj_textbox);
				myTextbox.text = myText;
				myTextbox.creator = self;
			}
			if (!instance_exists(self.myTextbox))
			{
				currentStep++;
			}
			break;
			
		// Look around	
		case 1:
			if (waitCounter < 30)
			{
				gloober.sprite_index = spr_hero_idle_south;
				waitCounter++;
			}
			else if (waitCounter >= 30 && waitCounter < 60)
			{
				gloober.sprite_index = spr_hero_idle_west
				waitCounter++;
			}
			else if (waitCounter >= 60 && waitCounter < 90)
			{
				gloober.sprite_index = spr_hero_idle_north;
				waitCounter++;
			}
			else if (waitCounter >= 90 && waitCounter < 120)
			{
				gloober.sprite_index = spr_hero_idle_east;
				waitCounter++;
			}
			else if (waitCounter >= 119)
			{
				currentStep++;
			}
			break;
		
		// Do another dialogue then control gloober
		case 2:
			if (myTextbox2 == noone)
			{
				myTextbox2 = instance_create_layer(x, y, "Textbox", obj_textbox);
				myTextbox2.text = myText1;
				myTextbox2.creator = self;
			}
			
			if (!instance_exists(myTextbox2))
			{
				currentStep++;
				obj_gloober.canMove = true;
				instance_destroy();
			}
	}
}