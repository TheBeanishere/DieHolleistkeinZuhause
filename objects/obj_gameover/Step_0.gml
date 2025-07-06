if (keyboard_check_pressed(vk_escape)){
	draw_set_alpha(1)
	draw_set_colour(c_white)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	room_goto(MENU_main)
}
if (keyboard_check_pressed(vk_enter)){
	draw_set_alpha(1)
	draw_set_colour(c_white)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	room_goto(GAME)
}
dark -= 0.005