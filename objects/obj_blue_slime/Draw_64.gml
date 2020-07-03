/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_gloober_atb_bar, 0, self.x + 450, self.y + 300);
draw_sprite_stretched(spr_gloober_atb_fill, 0, self.x + 450,self.y + 300,(atbValue/atbMaxValue) * atbWidth,10);
