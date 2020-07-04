/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_gloober_atb_bar, 0, startingX, startingY);
draw_sprite_stretched(spr_gloober_atb_fill, 0, startingX , startingY,(atbValue/atbMaxValue) * atbWidth,10);
