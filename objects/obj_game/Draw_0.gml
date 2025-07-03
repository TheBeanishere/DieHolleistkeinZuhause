if (room = MENU_main){
	draw_set_colour(c_black)
	var _x = 640
	var _y = 160
	var _count = 0
	repeat(menusquarecount){
		draw_rectangle(_x, _y, _x + 120, _y + 120, false)
		_count += 1
		if (_count mod 6 = 0){
			_x = 640 
			_y += 120
		}else{
			_x += 120
		}
	}
	draw_set_colour(c_grey)
	draw_set_halign(fa_right)
	draw_text(1280, 0, name + "'S SAVE DATA")
	draw_set_halign(fa_left)
	draw_set_colour(c_white)
}

if (room = MENU_savecreate){
	var _string = ""
	var _r = 0

	repeat(array_length(tempname)){
		_string = _string + chr(tempname[_r])
		_r += 1
	}
	draw_set_halign(fa_center)
	draw_set_font(global.bigfont)
	if (nameconfirm){
		draw_text(640, 180, nameline)
	}else{
		draw_text(640, 180, "PLEASE INPUT YOUR NAME")
	}
	draw_text(640, 360, "'" + _string + "'")
	draw_set_halign(fa_left)
}

if (room = MENU_custom){
	var _challenge = ""
	if (customchallenge = 0){
		_challenge = "Custom"
	}else if (customchallenge = 1){
		_challenge = "European Union"
	}else if (customchallenge = 2){
		_challenge = "Annoyances"
	}else if (customchallenge = 3){
		_challenge = "Crackshot"
	}else if (customchallenge = 4){
		_challenge = "Satan's Trial"
	}
	draw_text_transformed(64, 0, "CHALLENGE: " + _challenge, 1.75, 1.75, 0)
}
	