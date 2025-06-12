draw_self()
draw_set_colour(c_black)
draw_rectangle(bbox_right, bbox_bottom, bbox_right - 48, bbox_bottom - 48, false)
draw_set_colour(c_white)
draw_set_font(global.bigfont)
draw_text(bbox_right - 40, bbox_bottom - 40, string(myai))
if (collision_point(mouse_x, mouse_y, self, false, false)){
	draw_set_font(global.bigfont)
	draw_text(416*2, 80*2, name)
	draw_text_ext_transformed(416*2, 110*2, desc, 26, 300, 1.25, 1.25, 0)
}