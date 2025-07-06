switch (global.killedby){
	case 0:
		advice = choose( 
						"If he talks, the door light will shoo him away",
						"He moves silently, so check the office!",
						"He takes a while to actually get into the office if he's waiting at the door")
	break;
	case 1:
		advice = choose( 
						"He moves loudly, his footsteps can give away what side he's on",
						"If he shouts at you, shut the door, he doesn't wait around long")
	break;
	case 2:
		advice = "His voiceline gives away what side he's on, shut the door on that side"
	break;
	case 3:
		advice = choose( 
						"Stare at her in the cameras, it won't tak long",
						"If she breathes on you, then start searching the cams for her")
	break;
	case 4:
		advice = choose( 
						"Punch him if he talks",
						"He's in he office, punch him when he speaks",
						"Deck that coconut in the face if he talks")
	break;
	case 5:
		advice = choose( 
						"The vent flush has a long cooldown, be careful overusing it!",
						"He moves loduly through the vents, listen for him")
	break;
	case 6:
		advice = choose( 
						"His chains signal when he's about to attack and when he leaves",
						"Only shut the door AFTER you hear his chains",
						"Wait until you hear his chains, THEN shut the door")
	break;
	case 7:
		advice = choose( 
						"His fingers aren't visible with the cameras pulled up",
						"If he's attacking, act quickly, you have only seconds to react")
	break;
	case 8:
		advice = "THE DEVIL DOES THE DIRTIEST WORK IN THE DARK"
	break;
}

image_index = global.killedby