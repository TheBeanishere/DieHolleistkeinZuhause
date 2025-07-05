draw_self()
draw_set_halign(fa_center)
draw_set_font(global.bigfont)
var _yoffset = window_get_height()/3.25
if (progress < 38 || forgave != ""){	
	draw_text(originx, originy + (_yoffset*1.5), string_copy(dialogue[progress], 0, char))
}
draw_set_alpha(buttonfade)
draw_text(320, 600, "Y to forgive")
draw_text(960, 600, "N to not forgive")
draw_set_alpha(1)
draw_set_halign(fa_left)