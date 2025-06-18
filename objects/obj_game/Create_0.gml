audio_group_load(sfx)
audio_group_load(music)

global.font = font_add("thefont.ttf", 16, false, false, 32, 128)
global.bigfont = font_add("thefont.ttf", 24, false, false, 32, 128)
draw_set_font(global.font)

global.camera = 1
global.cameraflipped = false

files = []
var file_name = file_find_first("*.sav", fa_none);

while (file_name != "")
{
    array_insert(files, 0, file_name);

    file_name = file_find_next();
}

file_find_close();

show_debug_message(string(files))

global.savefile = ""

customchallenge = 0

//0
custom = [0, 0, 0, 0, 0, 0, 0]
//1
europe = [18, 15, 15, 18, 18, 0, 0]
//2
annoy = [0, 14, 0, 17, 17, 12, 10]
//3
crackshot = [13, 13, 13, 16, 16, 16, 13]
//4
maxmode = [20, 20, 20, 20, 20, 20, 20]

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