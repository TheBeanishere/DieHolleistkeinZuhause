image_alpha = 0.25 + ((myai/20) * 0.75)
draw_self()
draw_sprite_ext(sprite_index, customchoose+1, x, y, image_xscale, image_yscale, 0, c_white, 1)
draw_set_colour(c_white)
draw_set_font(global.bigfont)
draw_set_halign(fa_center)
draw_text_transformed(((bbox_left+bbox_right)/2) - ((myai/20)*10), bbox_bottom, string(myai), 1 + ((myai/20) * 3), 1, 0)
draw_set_halign(fa_left)
if (collision_point(mouse_x, mouse_y, self, false, false)){
	draw_set_font(global.bigfont)
	draw_text(336*2, 80*2, name)
	draw_text_ext_transformed(336*2, 110*2, desc, 27, 300, 1.25, 1.25, 0)
}