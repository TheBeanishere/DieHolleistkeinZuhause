if (array_contains(obj_office.disabledcams, global.camera)){
	image_index = 8
	x = obj_camera.xTo - 22
	image_xscale = 0.825
}else{
	image_index = global.camera - 1
	if (offsetx > 200){
		x = obj_camera.xTo - 200
	}else if (offsetx < 0){
		x = obj_camera.xTo
	}else{
		x = obj_camera.xTo - offsetx
	}
	image_xscale = 1
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