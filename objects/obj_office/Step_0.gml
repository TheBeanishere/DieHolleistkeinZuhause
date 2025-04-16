if (mouse_x < 320){
	offsetx += 8
}
if (mouse_x > 960){
	offsetx -= 8
}
if (mouse_y < 180){
	offsety += 8
}
if (mouse_y > 540){
	offsety -= 8
}

offsetx = clamp(offsetx, -335, 335)
offsety = clamp(offsety, -80, 0)

x = originx + offsetx
y = originy + offsety