timer += 1
var _rand = irandom_range(0, 9)
if (_rand = 9 && timer > 60 && timer < 120){
	sprite_index = spr_boot_spooky
	if (!audio_is_playing(sfx_bootscare)){
		audio_play_sound(sfx_bootscare, 1, false)
	}
}else{
	sprite_index = spr_boot
	if (audio_is_playing(sfx_bootscare)){
		audio_stop_sound(sfx_bootscare)
	}
}

if (timer > 120){
	image_alpha -= 0.015
	if (image_alpha <= 0){
		if (obj_game.name = ""){
			room_goto(MENU_savecreate)
		}else{
			room_goto(MENU_main)
		}
	}
}

if (keyboard_check_pressed(vk_enter)){
	timer = 120
}