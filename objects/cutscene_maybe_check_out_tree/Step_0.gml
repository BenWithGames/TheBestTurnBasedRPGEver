/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y, obj_gloober))
{
	obj_gloober.canMove = false;
	//obj_gloober.sprite_index = spr_hero_idle_east;
	switch (currentStep)
	{
		case 0:
			if (myTextbox == noone)
			{
				myTextbox = instance_create_layer(x, y, "Textbox", obj_textbox);
				myTextbox.text = myText;
				myTextbox.creator = self;
			}
			
			if (!instance_exists(myTextbox))
			{
				currentStep++;
				obj_gloober.canMove = true;
				instance_destroy();
			}
			break;
	}
}