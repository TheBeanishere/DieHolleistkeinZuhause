letter = -3
timer = 0
randomize()
image_alpha = 0
typespeed = choose(5, 8)
textsize = 1
if (name = "play"){
	currnight = obj_game.beatennight
}
if (name = "extras"||name = "night 6"){
	if (obj_game.beatennight < 6){
		instance_destroy(self)
	}
}
if (name = "custom night"){
	if (!obj_game.beatennight6){
		instance_destroy(self)
	}
}