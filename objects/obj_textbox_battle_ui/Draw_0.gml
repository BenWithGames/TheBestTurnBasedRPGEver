/// @description Insert description here
// You can write your code in this editor
draw_set_font(font0);

if (obj_gloober_battle.glooberAtbValue >= 100)
{
	draw_sprite(spr_textbox_ui, 0, camera_get_view_x(camera),
		camera_get_view_height(camera));

	draw_text_color(camera_get_view_x(camera) + 30,camera_get_view_height(camera) -60, "Attack", c_black,c_black,c_black,c_black,1);
}