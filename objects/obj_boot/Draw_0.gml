if (boottype = 0){
	draw_self()
}
if (boottype = 1){
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_set_font(global.bigfont)
	draw_text_ext(640, 360, "WARNING:\nIf you didn't know, this is a ''horror'' game, and has flashing lights and loud sudden noises, so if you'll  be hospitalised by those, maybe don't play this game, ok?", 28, 600)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
}