draw_set_font(global.font)
draw_set_colour(c_white)
var _power = round((obj_office.powerleft/obj_office.powermax)*100)
var _text = "Power:" + string(_power) + "%\nUsage:" + string(floor(obj_office.usage))
draw_text_transformed(0, 0,  _text, 0.75, 0.75, 0)
draw_set_halign(fa_right)
if (obj_office.hours = 0){
	draw_text_transformed(640, 0,  "12 AM", 0.75, 0.75, 0)
}else{
	draw_text_transformed(640, 0,  string(obj_office.hours) + " AM", 0.75, 0.75, 0)
}
draw_set_halign(fa_left)