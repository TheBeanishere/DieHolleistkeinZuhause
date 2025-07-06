global.cameraflipped = false
global.camera = 1

window_set_caption("Die Hölle ist kein Zuhause(English Translation)")

audio_stop_all()

if (room = GAME){
	if (global.night = 1){
		audio_play_sound(mus_odd, 1, true, 0.5)
		audio_play_sound(sfx_call_1, 1, false, 1.35)
		
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
	}
	if (global.night = 2){
		audio_play_sound(mus_even, 1, true, 0.5)
		audio_play_sound(sfx_call_2, 1, false, 1.35)
		
		AI_satan = 4
		AI_manimo = 5
		AI_sports = 6
		AI_joetube = 3
		AI_ava = 0
		AI_pravi = 5
		AI_beanie = 0

		AI_roachy = 0
		AI_coconut = 0

		AI_mathi = 0
		AI_marvel = 0
		AI_stitcher = 0
		AI_liru = 0
	}
	if (global.night = 3){
		audio_play_sound(mus_odd, 1, true, 0.5)
		audio_play_sound(sfx_call_4, 1, false, 1.35)
		
		AI_satan = 6
		AI_manimo = 8
		AI_sports = 8
		AI_joetube = 5
		AI_ava = 2
		AI_pravi = 6
		AI_beanie = 3

		AI_roachy = 0
		AI_coconut = 0

		AI_mathi = 0
		AI_marvel = 0
		AI_stitcher = 0
		AI_liru = 0
	}
	if (global.night = 4){
		audio_play_sound(mus_even, 1, true, 0.5)
		audio_play_sound(sfx_call_3, 1, false, 1.35)
		
		AI_satan = 8
		AI_manimo = 11
		AI_sports = 10
		AI_joetube = 9
		AI_ava = 6
		AI_pravi = 8
		AI_beanie = 7

		AI_roachy = 0
		AI_coconut = 0

		AI_mathi = 0
		AI_marvel = 0
		AI_stitcher = 0
		AI_liru = 0
	}
	if (global.night = 5){
		audio_play_sound(mus_devilsdetails, 1, true, 0.5)
		audio_play_sound(sfx_call_5, 1, false, 0.01)
		
		AI_satan = 10
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
	}
	if (global.night = 6){
		audio_play_sound(mus_hell, 1, true, 0.5)
		
		AI_satan = 12
		AI_manimo = 16
		AI_sports = 14
		AI_joetube = 17
		AI_ava = 10
		AI_pravi = 9
		AI_beanie = 11

		AI_roachy = 0
		AI_coconut = 0

		AI_mathi = 4
		AI_marvel = 4
		AI_stitcher = 4
		AI_liru = 4
	}
	if (global.night = "c"){
		if (customchallenge = 8){
			audio_play_sound(mus_dante, 1, true, 0.5)
		}else{
			audio_play_sound(choose(mus_odd, mus_even, mus_hell), 1, true, 0.5)
		}
	}
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

if (room = CREDITS){
	audio_play_sound(mus_thankyou, 1, false)
}

if (room = OPTIONS){
	audio_play_sound(mus_heatvent, 1, true)
}

if (room = MENU_gameover){
	if (global.killedby = 2){
		var _rand = irandom_range(0, 99)
		if (_rand = 0){
			audio_play_sound(sfx_sports_story, 1, false, 1.65)
		}
	}
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