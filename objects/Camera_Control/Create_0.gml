/// @description Insert description here
// You can write your code in this editor
camera = view_camera[1];
vm = matrix_build_lookat(0, 0, -10, 0, 0, 0, 0, 1, 0);
pm = matrix_build_projection_ortho(256, 192, 1, 3200);