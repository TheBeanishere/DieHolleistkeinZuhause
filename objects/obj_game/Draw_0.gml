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
		_challenge = "None"
	}else if (customchallenge = 1){
		_challenge = "Night 7"
	}else if (customchallenge = 2){
		_challenge = "Mathi Mania"
	}else if (customchallenge = 3){
		_challenge = "Ambushers"
	}else if (customchallenge = 4){
		_challenge = "Anthro con"
	}else if (customchallenge = 5){
		_challenge = "European Union"
	}else if (customchallenge = 6){
		_challenge = "The Annoying Fucks"
	}else if (customchallenge = 7){
		_challenge = "Crackshot"
	}else if (customchallenge = 8){
		_challenge = "The death of Dante"
	}
	draw_text(670, 10, "CHALLENGE: " + _challenge)
	draw_text(1180, 0, "D\nA\nN\nG\nE\nR")
	draw_rectangle(1280, 0, 1200, 300, false)
	draw_healthbar(1270, 10, 1210, 290, (((AI_ava + AI_beanie + AI_coconut + AI_joetube + AI_liru + AI_manimo + AI_marvel + AI_mathi + AI_pravi + AI_roachy + AI_satan + AI_sports + AI_stitcher)/260)*100), c_black, c_green, c_red, 3, false, false)
}
	