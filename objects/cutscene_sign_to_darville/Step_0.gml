/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_gloober) && keyboard_check_pressed(ord("F")))
{
	cutsceneStart = true;
}

if (cutsceneStart)
{
	obj_gloober.canMove = false;
	switch (currentStep)
	{
		case 0:
			if (myTextbox == noone)
			{
				myTextbox = instance_create_layer(x ,y, "Textbox", obj_textbox);
				myTextbox.text = myText;
				myTextbox.creator = self;
			}
			
			if (!instance_exists(myTextbox))
			{
				obj_gloober.canMove = true;
				currentStep = 0;
				cutsceneStart = false;
				myTextbox = noone;
			}
			break;
	}
}

show_debug_message(cutsceneStart);