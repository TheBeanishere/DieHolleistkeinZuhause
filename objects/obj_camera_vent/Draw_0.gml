if (global.cameraflipped && global.camera = 11 && obj_game.AI_mathi > 0){
	draw_self()
	var _cooldownness = cooldown/1100
	if (cooldown > 0){
		draw_set_alpha(0.65)
		draw_rectangle(x, y, x + (_cooldownness * 128), y + 64, false)
	}
	draw_set_alpha(1)
}