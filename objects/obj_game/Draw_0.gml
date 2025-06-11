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