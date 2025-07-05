// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_customchallenge(_challenge, _right){
	if (_right){
		obj_game.customchallenge += 1
	}else{
		obj_game.customchallenge -= 1
	}
	if (obj_game.customchallenge = -1){
		obj_game.customchallenge = 4
	}
	if (obj_game.customchallenge = 5){
		obj_game.customchallenge = 0
	}
	var _challengearray = []
	if (obj_game.customchallenge = 0){
		_challengearray = obj_game.custom
	}else if (obj_game.customchallenge = 1){
		_challengearray = obj_game.europe
	}else if (obj_game.customchallenge = 2){
		_challengearray = obj_game.annoy
	}else if (obj_game.customchallenge = 3){
		_challengearray = obj_game.crackshot
	}else if (obj_game.customchallenge = 4){
		_challengearray = obj_game.maxmode
	}
	
	obj_game.AI_satan = array_get(_challengearray, 0)
	obj_game.AI_manimo = array_get(_challengearray, 1)
	obj_game.AI_sports = array_get(_challengearray, 2)
	obj_game.AI_joetube = array_get(_challengearray, 3)
	obj_game.AI_pravi = array_get(_challengearray, 4)
	obj_game.AI_ava = array_get(_challengearray, 5)
	obj_game.AI_beanie = array_get(_challengearray, 6)
	obj_game.AI_roachy = array_get(_challengearray, 7)
	obj_game.AI_coconut = array_get(_challengearray, 8)
	obj_game.AI_mathi = array_get(_challengearray, 9)
	obj_game.AI_marvel = array_get(_challengearray, 10)
	obj_game.AI_stitcher = array_get(_challengearray, 11)
	obj_game.AI_liru = array_get(_challengearray, 12)
	
	with (obj_customnight){
		switch (customchoose){
			case 0:
				myai = obj_game.AI_satan
			break;
			case 1:
				myai = obj_game.AI_manimo
			break;
			case 2:
				myai = obj_game.AI_sports
			break;
			case 3:
				myai = obj_game.AI_joetube
			break;
			case 4:
				myai = obj_game.AI_pravi
			break;
			case 5:
				myai = obj_game.AI_ava
			break;
			case 6:
				myai = obj_game.AI_beanie
			break;
			case 7:
				myai = obj_game.AI_roachy
			break;
			case 8:
				myai = obj_game.AI_coconut
			break;
			case 9:
				myai = obj_game.AI_mathi
			break;
			case 10:
				myai = obj_game.AI_marvel
			break;
			case 11:
				myai = obj_game.AI_stitcher
			break;
			case 12:
				myai = obj_game.AI_liru
			break;
		}
	}
}