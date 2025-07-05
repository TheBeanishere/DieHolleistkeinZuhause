if (array_contains(obj_office.disabledcams, global.camera)||obj_office.powerleft > 0){
	x = obj_camera.xTo
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