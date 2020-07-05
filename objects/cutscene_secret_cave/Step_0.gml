/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_gloober))
{
	startCutscene = true;
}
if (startCutscene)
{
	obj_gloober.canMove = false;
	
	switch (currentStep)
	{
		case 0: 
			obj_gloober.sprite_index = spr_hero_walk_north;
			if (obj_gloober.y < 760)
				obj_gloober.y += 1.3;
			if (obj_gloober.y >= 760)
			{
				obj_gloober.sprite_index = spr_hero_idle_north;
				currentStep++;
			}
			break;
		
		case 1: 
			if (myTextbox == noone)
			{
				myTextbox = instance_create_layer(x, y, "Textbox", obj_textbox);
				myTextbox.text = myText;
				myTextbox.creator = self;
			}
			
			if (!instance_exists(myTextbox))
			{
				myTextbox = noone;
				obj_gloober.canMove = true;
				startCutscene = false;
				currentStep = 0;
			}
			break;
	}
}