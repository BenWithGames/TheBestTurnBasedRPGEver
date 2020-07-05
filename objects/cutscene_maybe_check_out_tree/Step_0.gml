/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y, obj_gloober) && instance_exists(cutscene_into_first_battle))
{
	startCutscene = true;
}

if (startCutscene)
{
	switch (currentStep)
	{
		case 0:
			obj_gloober.canMove = false;
			obj_gloober.sprite_index = spr_hero_idle_east;
			if (myTextbox == noone)
			{
				myTextbox = instance_create_layer(x, y, "Textbox", obj_textbox);
				myTextbox.text = myText;
				myTextbox.creator = self;
			}
			
			if (!instance_exists(myTextbox))
			{
				currentStep++;
			}
			break;
		case 1:
			obj_gloober.canMove = true;
			currentStep++;
			instance_destroy();
	}
}

