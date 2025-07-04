if (collision_point(mouse_x, mouse_y, self, false, false)){
	if (mouse_wheel_up()){
		obj_game.customchallenge = 0
		switch (customchoose){
			case 0:
				obj_game.AI_satan += 1
				obj_game.AI_satan = clamp(obj_game.AI_satan, 0, 20)
				myai = obj_game.AI_satan
			break;
			case 1:
				obj_game.AI_manimo += 1
				obj_game.AI_manimo = clamp(obj_game.AI_manimo, 0, 20)
				myai = obj_game.AI_manimo
			break;
			case 2:
				obj_game.AI_sports += 1
				obj_game.AI_sports = clamp(obj_game.AI_sports, 0, 20)
				myai = obj_game.AI_sports
			break;
			case 3:
				obj_game.AI_joetube += 1
				obj_game.AI_joetube = clamp(obj_game.AI_joetube, 0, 20)
				myai = obj_game.AI_joetube
			break;
			case 4:
				obj_game.AI_pravi += 1
				obj_game.AI_pravi = clamp(obj_game.AI_pravi, 0, 20)
				myai = obj_game.AI_pravi
			break;
			case 5:
				obj_game.AI_ava += 1
				obj_game.AI_ava = clamp(obj_game.AI_ava, 0, 20)
				myai = obj_game.AI_ava
			break;
			case 6:
				obj_game.AI_beanie += 1
				obj_game.AI_beanie = clamp(obj_game.AI_beanie, 0, 20)
				myai = obj_game.AI_beanie
			break;
			case 7:
				obj_game.AI_roachy += 1
				obj_game.AI_roachy = clamp(obj_game.AI_roachy, 0, 20)
				myai = obj_game.AI_roachy
			break;
			case 8:
				obj_game.AI_coconut += 1
				obj_game.AI_coconut = clamp(obj_game.AI_coconut, 0, 20)
				myai = obj_game.AI_coconut
			break;
		}
	}
	if (mouse_wheel_down()){
		obj_game.customchallenge = 0
		switch (customchoose){
			case 0:
				obj_game.AI_satan -= 1
				obj_game.AI_satan = clamp(obj_game.AI_satan, 0, 20)
				myai = obj_game.AI_satan
			break;
			case 1:
				obj_game.AI_manimo -= 1
				obj_game.AI_manimo = clamp(obj_game.AI_manimo, 0, 20)
				myai = obj_game.AI_manimo
			break;
			case 2:
				obj_game.AI_sports -= 1
				obj_game.AI_sports = clamp(obj_game.AI_sports, 0, 20)
				myai = obj_game.AI_sports
			break;
			case 3:
				obj_game.AI_joetube -= 1
				obj_game.AI_joetube = clamp(obj_game.AI_joetube, 0, 20)
				myai = obj_game.AI_joetube
			break;
			case 4:
				obj_game.AI_pravi -= 1
				obj_game.AI_pravi = clamp(obj_game.AI_pravi, 0, 20)
				myai = obj_game.AI_pravi
			break;
			case 5:
				obj_game.AI_ava -= 1
				obj_game.AI_ava = clamp(obj_game.AI_ava, 0, 20)
				myai = obj_game.AI_ava
			break;
			case 6:
				obj_game.AI_beanie -= 1
				obj_game.AI_beanie = clamp(obj_game.AI_beanie, 0, 20)
				myai = obj_game.AI_beanie
			break;
			case 7:
				obj_game.AI_roachy -= 1
				obj_game.AI_roachy = clamp(obj_game.AI_roachy, 0, 20)
				myai = obj_game.AI_roachy
			break;
			case 8:
				obj_game.AI_coconut -= 1
				obj_game.AI_coconut = clamp(obj_game.AI_coconut, 0, 20)
				myai = obj_game.AI_coconut
			break;
		}
	}
}