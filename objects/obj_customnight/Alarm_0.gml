if (customchoose = 0){
			obj_game.AI_sports += 1
			obj_game.AI_sports = clamp(obj_game.AI_sports, 0, 20)
			myai = obj_game.AI_sports
			return;
		}