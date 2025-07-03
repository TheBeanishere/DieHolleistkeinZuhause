draw_self()
draw_set_halign(fa_center)
draw_set_font(global.bigfont)
var _yoffset = window_get_height()/4
var _shakex = 0
var _shakey = 0
if (array_contains(shaking, progress)){
	_shakex = irandom_range(-7, 7)
	_shakey = irandom_range(-7, 7)
}
draw_text(x + _shakex, y + (_yoffset*1.5) - _shakey, string_copy(dialogue[progress], 0, char))
draw_set_halign(fa_right)