global.cameraflipped = false
global.camera = 1

window_set_caption("Die Hölle ist kein Zuhause(English Translation)")

audio_stop_all()

if (room = GAME){

}

if (room = MENU_main){
	menusquarecount = 27
	audio_play_sound(mus_menu, 1, true)
}

if (room = MENU_custom){
	audio_play_sound(mus_decisions, 1, true)
}

if (room = WIN){
	audio_play_sound(mus_satansleeps, 1, false)
}

if (room = MENU_gameover){
	audio_play_sound(mus_gameover, 1, false)
}

if (room = INTER_night5cutscene){
	audio_play_sound(mus_goatsgruff, 1, true)
	window_set_caption("I SEE YOU")
}
if (room = INTER_endcutscene){
	audio_play_sound(mus_the_unforgiving, 1, true)
	window_set_caption("...")
}