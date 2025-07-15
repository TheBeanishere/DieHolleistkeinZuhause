image_alpha = 0.25 + ((myai/20) * 0.75)
ini_open(savedata)
var _hard = ini_read_real("options","scunge", false)
ini_close()
if (_hard){	
	draw_set_colour(#DD2288)
	image_blend = #DD2288
}else{
	draw_set_colour(c_white)
	image_blend = c_white
}
draw_self()
draw_sprite_ext(sprite_index, customchoose+1, x, y, image_xscale, image_yscale, 0, image_blend, 1)
draw_set_font(global.bigfont)
draw_set_halign(fa_center)
draw_text_transformed(((bbox_left+bbox_right)/2) - ((myai/20)*10), bbox_bottom, string(myai), 1 + ((myai/20) * 3), 1, 0)
draw_set_halign(fa_left)
if (collision_point(mouse_x, mouse_y, self, false, false)){
	draw_set_font(global.bigfont)
	if (_hard){	
		draw_text(336*2, 80*2, name + " (HARD)")
	}else{
		draw_text(336*2, 80*2, name)
	}
	if (_hard){	
		draw_text_ext_transformed(336*2, 110*2, deschard, 27, 300, 1.25, 1.25, 0)
	}else{
		draw_text_ext_transformed(336*2, 110*2, desc, 27, 300, 1.25, 1.25, 0)
	}
}