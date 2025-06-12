audio_group_load(sfx)
audio_group_load(music)

global.font = font_add("thefont.ttf", 16, false, false, 32, 128)
global.bigfont = font_add("thefont.ttf", 24, false, false, 32, 128)
draw_set_font(global.font)

global.camera = 1
global.cameraflipped = false

audio_listener_position(0, 0, 0)
audio_falloff_set_model(audio_falloff_linear_distance)
audio_listener_set_orientation(0, 0, 0, 1, 0, -1, 0)

//window_set_fullscreen(true)

AI_mathi = 0
AI_manimo = 0
AI_sports = 0
AI_joetube = 0
AI_ava = 0
AI_pravi = 0
AI_beanie = 0

AI_roachy = 0
AI_coconut = 0

menusquarecount = 27