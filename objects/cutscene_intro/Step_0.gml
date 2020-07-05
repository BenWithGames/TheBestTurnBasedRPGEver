/// @description Insert description here
// You can write your code in this editor
if (currentState = cutSceneStates.Active) {
	obj_gloober.canMove = false;
	switch(currentStep)
	{
		case 0:
			if (introTextbox == noone)
			{
				introTextbox = instance_create_layer(x,y,"Textbox", obj_textbox);
				introTextbox.text = introText;
				introTextbox.creator = self;
			}
			
			if (!instance_exists(introTextbox))
			{
				currentStep++;
				currentState = cutSceneStates.Paused;
				obj_gloober.canMove = true;
				instance_destroy();
				break;
			}
	}
}

