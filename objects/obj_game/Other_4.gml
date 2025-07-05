global.cameraflipped = false
global.camera = 1

audio_stop_all()

if (room = MENU_main){
	menusquarecount = 27
	audio_play_sound(mus_menu, 1, true)
}

if (room = MENU_custom){
	audio_play_sound(mus_scary, 1, true)
}

if (room = GAME){
	window_set_caption("Hölle")
}

if (room = INTER_night5cutscene){
	audio_play_sound(mus_goatsgruff, 1, true)
	window_set_caption("I SEE YOU")
}
if (room = INTER_endcutscene){
	audio_play_sound(mus_the_unforgiving, 1, true)
	window_set_caption("...")
}