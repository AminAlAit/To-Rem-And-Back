// Drawing the black rectangles
if(black_bars){
	draw_sprite_ext(spr_pixel, 0, 0,   0, 1280, black_bars_h, 0, c_black, 1);
	draw_sprite_ext(spr_pixel, 0, 0, 520, 1280, black_bars_h, 0, c_black, 1);
}

// text
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_intro);
draw_text(640, 600, print);

if(holdspace > 0){
	draw_set_alpha(scr_wave(0.2, 0.8, 1, 0));
	draw_text(640, 660, "Hold Space To Skip");
	draw_set_alpha(1);
}

// Fading out
draw_sprite_ext(spr_pixel, 0, 0, 0, room_width, room_height, 0, c_black, alpha);