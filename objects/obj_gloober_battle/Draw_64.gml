/// @description Insert description here
// You can write your code in this editor

// ATB
draw_sprite(spr_gloober_atb_bar, 0, self.x + 450, self.y + 300);
draw_sprite_stretched(spr_gloober_atb_fill, 0, self.x + 450,self.y + 300,(glooberAtbValue/glooberAtbMaxValue) * glooberAtbWidth,10);

// HP
draw_sprite(spr_gloober_hp_bar, 0, self.x +175, self.y + 380);
draw_sprite_stretched(spr_gloober_hp_fill, 0, self.x + 175,self.y + 380,(glooberHpValue/glooberHpMax) * glooberHpWidth, 17);
