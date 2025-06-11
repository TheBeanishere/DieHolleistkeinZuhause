// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_camerastatic(){
	obj_camstatic.image_alpha = 1
	if (global.cameraflipped){
		audio_play_sound(sfx_camstatic, 1, false, 0.2)
	}
}