/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y,obj_gloober))
{
	startCutscene = true;
	endingObjGlooberX = obj_gloober.x - 5;
	endingObjGlooberX2 = endingObjGlooberX - 5;
}

if (startCutscene)
{
	obj_gloober.canMove = false;
	
	switch(currentStep)
	{
		case 0: 
			obj_gloober.sprite_index = spr_hero_idle_east;
			
			if (frameCounter < 60)
				frameCounter++
			else if (frameCounter >= 60)
			{
				if (myTextbox == noone)
				{
					myTextbox = instance_create_layer(x, y, "Textbox", obj_textbox);
					myTextbox.text = myText;
					myTextbox.creator = self;
				}
			
				if (!instance_exists(myTextbox))
				{
					frameCounter = 0;
					currentStep++;
				}
			}
	
			break;
		
		case 1:
			if (obj_red_slime.x > endingObjRedSlimeX)
			{
				obj_red_slime.x -= .4;
			}
			if (obj_red_slime.x <= endingObjRedSlimeX)
			{
				currentStep++;
			}
			break;
		
		case 2:
			if (frameCounter < 20)
			{
				frameCounter++;
			}
			if (frameCounter >= 20)
			{
				if (obj_gloober.x > endingObjGlooberX)
				{
					obj_gloober.sprite_index = spr_hero_walk_east;
					obj_gloober.image_speed = .5;
					obj_gloober.x -= .4;
				}
				if (obj_gloober.x <= endingObjGlooberX)
				{
					obj_gloober.sprite_index = spr_hero_idle_east;
					frameCounter = 0;
					currentStep++;
				}
			}
			
			break;
			
		case 3:
			if (frameCounter < 20)
			{
				frameCounter++;
			}
			if (frameCounter >= 20)
			{
				if (obj_red_slime.x > endingObjRedSlimeX2)
				{
					obj_red_slime.x -= .4;
				}
				if (obj_red_slime.x <= endingObjRedSlimeX2)
				{
					frameCounter = 0;
					currentStep++;
				}
			}
		
			break;
		case 4:
			if (frameCounter < 20)
			{
				frameCounter++;
			}
			if (frameCounter >= 20)
			{
				if (obj_gloober.x > endingObjGlooberX2)
				{
					obj_gloober.sprite_index = spr_hero_walk_east;
					obj_gloober.image_speed = .8;
					obj_gloober.x -= .4;
				}
				if (obj_gloober.x <= endingObjGlooberX2)
				{
					obj_gloober.sprite_index = spr_hero_idle_east;
					frameCounter = 0;
					currentStep++;
				}
			}
			
			break;
		
		case 5:
			if (myTextbox2 = noone)
			{
				myTextbox2 = instance_create_layer(x, y, "Textbox", obj_textbox);
				myTextbox2.text = myText2;
				myTextbox2.creator = self;
			}
			
			if (!instance_exists(myTextbox2))
			{
				currentStep++;
			}
			break;
	}
}