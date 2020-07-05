/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y, obj_gloober))
{
	startCutscene = true;
}
if (startCutscene)
{
	obj_gloober.canMove = false;
	switch (currentStep)
	{
		// The AUGH part
		case 0:
			if (glooberTextbox == noone)
			{
				glooberTextbox = instance_create_layer(x,y,"Textbox", obj_textbox);
				glooberTextbox.text = glooberText;
				glooberTextbox.creator = self;
			}
			
			if (!instance_exists(glooberTextbox))
			{
				currentStep += 1;
			}
			break;
			
		// Make the sprite face east and run backwards.. Pause for 1 second
		case 1:
			
			obj_gloober.image_speed = 5;
			obj_gloober.sprite_index = spr_hero_walk_east;
		
				
			if (obj_gloober.x > 600)
			{
				obj_gloober.x -= 2;
			}
			
			if (obj_gloober.x <= 600)
			{
				frameCounter++;
				obj_gloober.image_speed = 1;
				obj_gloober.sprite_index = spr_hero_idle_east;
				
				if (frameCounter >= 50)
				{
					currentStep++;
				}
			}
			break;
		
		// What was that?
		case 2:
			if (glooberTextbox1 == noone)
			{
				glooberTextbox1 = instance_create_layer(x,y,"Textbox", obj_textbox);
				glooberTextbox1.text = glooberText1;
				glooberTextbox1.creator = self;
			}
				
			if (!instance_exists(glooberTextbox1))
			{
				currentStep ++;
			}
			
			break;
		
		// Screen transition to first battle
		case 3: 
			if (transition == noone)
			{
				transition = instance_create_layer(x,y, "Textbox", obj_transition);
			}
			
			if (transition.subImg >= 21)
			{
				instance_destroy(transition);
				room_goto(room_first_battle);
				global.enemyFight = GetEnemyObject("obj_blue_slime");
				currentStep++;
				instance_destroy();
			}
			break;
	}
}
