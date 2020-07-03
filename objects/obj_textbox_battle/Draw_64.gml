/// @description Insert description here
// You can write your code in this editor
draw_sprite_stretched(spr_textbox, 0, camera_get_view_x(camera), window_get_height() - sprite_get_height(spr_textbox) - 80,
	window_get_width() , sprite_get_height(spr_textbox) + 80);

if (charCount < string_length(text[page])) {
	if (keyboard_check_pressed(ord("G"))) {
		pageHit = true;
		charCount = string_length(text[page]);
	}	
	charCount += 1;
} else {
	pageHit =  true;
}



textPart = string_copy(text[page], 1, charCount);	

stringWrapHeightPerFrame = string_height_ext(textPart, -1,  window_get_width()-20);

if (stringWrapHeightPerFrame > sprite_get_height(spr_textbox)) {
	charCountContinue +=1
	textContinue = string_copy(text[page], length, charCountContinue); 
	draw_text_ext(camera_get_view_x(camera) + 70, window_get_height() - sprite_get_height(spr_textbox) - 50, 
	textContinue, string_height(text[page]), window_get_width());
} else {
	draw_text_ext(camera_get_view_x(camera) + 70, window_get_height() - sprite_get_height(spr_textbox) - 50, 
		textPart, string_height(text[page]), window_get_width());
	length+=1;
}