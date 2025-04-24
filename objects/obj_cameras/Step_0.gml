image_index = global.camera - 1
if (offsetx > 200){
	x = obj_camera.xTo - 200
}else if (offsetx < 0){
	x = obj_camera.xTo
}else{
	x = obj_camera.xTo - offsetx
}
	
y = obj_camera.yTo
if (pan){
	offsetx += 1
}else{
	offsetx -= 1
}
if (offsetx = 250){
	pan = false
}
if (offsetx = -50){
	pan = true
}