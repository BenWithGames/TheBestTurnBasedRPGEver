/// @description Insert description here
// You can write your code in this editor
draw_set_font(font0);



if (obj_gloober_battle.glooberAtbValue >= 100)
{
	// Get menu input
	if (keyboard_check(vk_right))
	{
		decision = decisions[1];
	}
	if (keyboard_check(vk_left))
	{
		decision = decisions[0];
	}
	
	// Draw Textbox UI
	draw_sprite(spr_textbox_ui, 0, camera_get_view_x(camera),
		camera_get_view_height(camera));

	// Draw the text Attack and Run
	draw_text_color(camera_get_view_x(camera) + 30,camera_get_view_height(camera) -60, "Attack", c_black,c_black,c_black,c_black,1);
	draw_text_color(camera_get_view_width(camera) - 200,camera_get_view_height(camera) -60, "Run", c_black,c_black,c_black,c_black,1);
	
	// Logic for choosing Attack or Run
	if (decision = 0)
	{
		draw_sprite(spr_arrow, 0, camera_get_view_x(camera) ,camera_get_view_height(camera) -60);
	}
	else if (decision = 1)
	{
		draw_sprite(spr_arrow, 0, camera_get_view_width(camera) - 230 ,camera_get_view_height(camera) -60);
	}
	
	
	
}