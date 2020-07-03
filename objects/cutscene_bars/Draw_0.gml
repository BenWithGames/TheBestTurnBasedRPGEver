/// @description Insert description here
// You can write your code in this editor
draw_sprite_stretched(spr_blackbox, 0, camera_get_view_x(camera), camera_get_view_y(camera), camera_get_view_width(camera), camera_get_view_height(camera)/5 );
draw_sprite_stretched(spr_blackbox, 0, camera_get_view_x(camera), camera_get_view_y(camera) + camera_get_view_height(camera) - (camera_get_view_height(camera)/5), camera_get_view_width(camera), camera_get_view_height(camera)/5 );




