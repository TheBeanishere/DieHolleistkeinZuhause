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
	audio_play_sound(mus_customnightmaxmodeflumpyknockoff, 1, true)
}