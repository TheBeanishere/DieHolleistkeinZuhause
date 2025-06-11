if (global.cameraflipped && global.camera = 5 && obj_game.AI_joetube > 0){
	draw_self()
	var _cooldownness = cooldown/800
	if (cooldown > 0){
		draw_set_alpha(0.65)
		draw_rectangle(x, y, x + (_cooldownness * 64), y + 32, false)
	}
	draw_set_alpha(1)
}