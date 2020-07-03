/// @description Insert description here
// You can write your code in this editor
if (canMove)
{
	if (keyboard_check(vk_right) && !place_meeting(x + 1.4, y, obj_hitbox))
	{
		sprite_index = spr_hero_walk_east;
		self.x += 1.3;
	}
	if(keyboard_check_released(vk_right))
		sprite_index = spr_hero_idle_east;
			
	if (keyboard_check(vk_left) && !place_meeting(x - 1.4, y, obj_hitbox))
	{
		sprite_index = spr_hero_walk_west; 
		self.x -= 1.3;
	}
	if (keyboard_check_released(vk_left))
		sprite_index = spr_hero_idle_west;
	
	if (keyboard_check(vk_up) && !place_meeting(x, y - 1.4, obj_hitbox))
	{
		sprite_index = spr_hero_walk_north;
		self.y -= 1.3;
	}
	if (keyboard_check_released(vk_up))
		sprite_index = spr_hero_idle_north;
	
	if (keyboard_check(vk_down) && !place_meeting(x, y + 1.4, obj_hitbox))
	{
		sprite_index = spr_hero_walk_south;
		self.y += 1.3;
	}
	if(keyboard_check_released(vk_down))
		sprite_index = spr_hero_idle_south
}