/// @description Insert description here
// You can write your code in this editor
view_set_visible(0, true);
camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);
view_camera[1] = camera;
view_enabled = true;