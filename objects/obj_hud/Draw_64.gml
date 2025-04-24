draw_set_font(global.font)
draw_set_colour(c_white)
draw_text_transformed(0, 0,  "Power:" + string((obj_office.powerleft/obj_office.powermax)*100) + "%\nUsage:" + string(obj_office.usage), 0.5, 0.5,0)