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
	draw_set_colour(c_white)
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
	