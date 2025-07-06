draw_set_font(global.bigfont)
draw_set_colour(c_white)
draw_text_ext(60, 500, "Right and Left arrow keys to change Options \nUp and Down arrow keys for volume\nEnter for toggles", 30, 1160)
switch (choice){
	case 0:
		draw_text(30, 120, "?")
	break;
	case 1:
		draw_text(610, 120, "?")
	break;
	case 2:
		draw_text(30, 170, "?")
	break;
	case 3:
		draw_text(610, 170, "?")
	break;
	case 4:
		draw_text(30, 220, "?")
	break;
}
draw_text(60, 120, "SFX: ")
draw_rectangle(60 + string_width("SFX: "), 120, 60 + string_width("SFX:") + (300 * (audio_group_get_gain(sfx)/1)), 160, false)
draw_text(640, 120, "MUSIC: ")
draw_rectangle(640 + string_width("MUSIC: "), 120, 640 + string_width("MUSIC: ") + (300 * (audio_group_get_gain(music)/1)), 160, false)
var _true = false
ini_open(savedata)
_true = ini_read_real("options", "jumpscares", true)
ini_close()
if (_true){
	draw_text(60, 170, "JUMPSCARES: YES")
}else{
	draw_text(60, 170, "JUMPSCARES: NO")
}
ini_open(savedata)
_true = ini_read_real("options","fullscreen", false)
ini_close()
if (_true){
	draw_text(640, 170, "FULLSCREEN: YES")
}else{
	draw_text(640, 170, "FULLSCREEN: NO")
}
ini_open(savedata)
_true = ini_read_real("options","scunge", false)
ini_close()
if (_true){
	draw_text(60, 220, "SCUNGIN'")
}else{
	draw_text(60, 220, "INABILITIY TO SCUNGE")
}