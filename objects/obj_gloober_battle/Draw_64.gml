/// @description Insert description here
// You can write your code in this editor

// ATB
draw_sprite(spr_gloober_atb_bar, 0, startingAtbX, startingAtbY);
draw_sprite_stretched(spr_gloober_atb_fill, 0, startingAtbX, startingAtbY,(glooberAtbValue/glooberAtbMaxValue) * glooberAtbWidth,10);

// HP
draw_sprite(spr_gloober_hp_bar, 0, startingHpX, startingHpY);
draw_sprite_stretched(spr_gloober_hp_fill, 0, startingHpX, startingHpY,(glooberHpValue/glooberHpMax) * glooberHpWidth, 17);
