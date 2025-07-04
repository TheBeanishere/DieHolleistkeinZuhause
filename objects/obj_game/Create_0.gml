audio_group_load(sfx)
audio_group_load(music)

global.font = font_add("thefont.ttf", 16, false, false, 32, 128)
global.bigfont = font_add("thefont.ttf", 24, false, false, 32, 128)
draw_set_font(global.font)

global.night = 1 //1, 2, 3, 4, 5, 6, custom
global.camera = 1
global.cameraflipped = false

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

AI_satan = 0
AI_manimo = 0
AI_sports = 0
AI_joetube = 0
AI_ava = 0
AI_pravi = 0
AI_beanie = 0

AI_roachy = 0
AI_coconut = 0

AI_mathi = 0
AI_marvel = 0
AI_stitcher = 0
AI_liru = 0

menusquarecount = 27

tempname = []
nameconfirm = false
namedeny = false
nameline = ""
nononames = ["BEANIE", "MATHI5000", "MARVEL2500", "BEAN", "LYDIA", "BEANIE BOPPER", "MATHI", "MATHIS", "PRAVI", "CHRISTIAN", "SPORTS", "MANIMO", "ROACHY", "SILVERROACHY", "COCONUT", "JOETUBE", "AVA", "MARVEL", "STITCHER", "FUCK YOU", "FUCKYOU", "FUCKU", "F U", "FUCK U", "ORENG", "SANS", "ALEX", "ALEXTHEFUNNY", "THEFUNNY", "LIRU"]
specialnames = ["JESSE", "BRITTNEY", "MITCH", "ZANY", "WILLOW", "FIERE"]

#macro savedata "helllog.sav"

ini_open(savedata)
name = ini_read_string("data", "name", "")
ini_close()