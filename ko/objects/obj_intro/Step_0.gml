/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
timer += global.spf;
switch (stage) {
	case -7:
		// nothing
		break;
	case -6:
		// repeated
		if (timer >= 0) {
			timer = 0;
			stage ++;
			// exit
			audio_play_sound(mus_room, 0, false);
		}
		break;
	case -5:
		// repeated
		if (timer >= 1) {
			timer = 0;
			stage ++;
			// exit
		}
		break;
	case -4:
		// repeated
		if (timer >= 1) {
			timer = 0;
			stage ++;
			// exit
		}
		break;
	case -3:
		// repeated
		if (timer >= 1) {
			timer = 0;
			stage ++;
			stage = 0;
			// exit
		}
		break;
	case 0:
		// repeated
		if (timer >= 0) {
			timer = 0;
			stage ++;
			// exit
			sprite_index = spr_chairroom_cross_nopatient;
		}
		break;
	case 1:
		// repeated
		if (timer >= 3) {
			timer = 0;
			stage ++;
			// exit
			visible = false;
		}
		break;
	case 2:
		// repeated
		if (timer >= 1) {
			timer = 0;
			stage ++;
			// exit
			sprite_index = spr_chairroom_cross_patient;
			visible = true;
		}
		break;
	case 3:
		// repeated
		if (timer >= 2) {
			timer = 0;
			stage ++;
			// exit
			sc_dialog(spr_incubus_dialogue, "First words that this game shows you", -1);
		}
		break;
}
show_debug_message(stage);////