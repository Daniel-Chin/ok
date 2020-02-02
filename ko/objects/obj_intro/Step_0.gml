/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
timer += global.spf * SPEED;
sc_loop(u_room);
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
		if (timer >= 2) {
			timer = 0;
			stage ++;
			// exit
		}
		break;
	case -2:
		// repeated
		if (timer >= 1) {
			timer = 0;
			stage ++;
			// exit
		}
		break;
	case -1:
		// repeated
		if (timer >= 1) {
			timer = 0;
			stage ++;
			// exit
		}
		break;
	case 0:
		// repeated
		if (timer >= 2) {
			timer = 0;
			stage ++;
			// exit
		}
		break;
	case 1:
		// repeated
		if (timer >= 1) {
			timer = 0;
			stage ++;
			// exit
		}
		break;
	case 2:
		// repeated
		if (timer >= 1) {
			timer = 0;
			stage ++;
			// exit
		}
		break;
	case 3:
		// repeated
		if (keyboard_check(vk_anykey)) {
			timer = 0;
			stage ++;
			// exit
		}
		break;
	case 4:
		// repeated
		if (timer >= 2) {
			timer = 0;
			stage ++;
			stage = 6;
			// exit
		}
		break;







	case 6:
		// repeated
		if (timer >= 0) {
			timer = 0;
			stage = 9;
			// exit
			image_xscale = 1;
			image_yscale = .5;
			sprite_index = spr_chairroom_cross_nopatient;
		}
		break;
	case 9:
		// repeated
		if (timer >= 2) {
			timer = 0;
			stage ++;
			// exit
			sc_dialog(spr_incubus_dialogue, "Another day, another patient.", -1);
		}
		break;
	case 10:
		// repeated
		if (timer >= 3) {
			timer = 0;
			stage ++;
			// exit
			sc_dialog(spr_incubus_dialogue, "Could the following patient \nplease come in?", -1);
		}
		break;
	case 11:
		// repeated
		if (timer >= 3) {
			timer = 0;
			stage ++;
			// exit
			visible = false;
			audio_play_sound(dooropen, 0, false);
		}
		break;
	case 12:
		// repeated
		if (timer >= 1) {
			timer = 0;
			stage ++;
			// exit
			sprite_index = spr_chairroom_cross_patient;
			visible = true;
			audio_play_sound(doorclose, 0, false);
		}
		break;
	case 13:
		// repeated
		if (timer >= 2) {
			timer = 0;
			stage ++;
			// exit
			sc_dialog(patient_dialogue, "Good morning Doctor.", +1);
		}
		break;
	case 14:
		// repeated
		if (timer >= 3) {
			timer = 0;
			stage ++;
			// exit
			sc_dialog(incubus_dialogue, "Great to see you again. It’s been \na while since you last made an appointment.", -1);
		}
		break;
	case 15:
		// repeated
		if (timer >= 3) {
			timer = 0;
			stage ++;
			// exit
			sc_dialog(incubus_dialogue, "How are things?", -1);
		}
		break;
	case 16:
		// repeated
		if (timer >= 3) {
			timer = 0;
			stage ++;
			// exit
			sc_dialog(patient_dialogue_sad, "Not so great.", +1);
		}
		break;
	case 17:
		// repeated
		if (timer >= 3) {
			timer = 0;
			stage ++;
			// exit
			sc_dialog(patient_dialogue_sad, "Work is… too much for me lately.", +1);
		}
		break;
	case 18:
		// repeated
		if (timer >= 3) {
			timer = 0;
			stage ++;
			// exit
			sc_dialog(patient_dialogue, "I dunno, I feel like the constant stress \nof this office job is just feeding my inner demons.", +1);
		}
		break;
	case 19:
		// repeated
		if (timer >= 3) {
			timer = 0;
			stage ++;
			// exit
			sc_dialog(incubus_dialogue, "Is it now?", -1);
		}
		break;
	case 20:
		// repeated
		if (timer >= 3) {
			timer = 0;
			stage ++;
			// exit
			sc_dialog(patient_dialogue_sad, "...", +1);
		}
		break;
	case 21:
		// repeated
		if (timer >= 2) {
			timer = 0;
			stage ++;
			// exit
			sc_dialog(incubus_dialogue, "Well, Why don’t we unpack your thoughts a bit.", -1);
		}
		break;
	case 22:
		// repeated
		if (timer >= 3) {
			timer = 0;
			stage ++;
			// exit
			sc_dialog(patient_dialogue_sad, "That sounds good...", +1);
		}
		break;
	case 23:
		// repeated
		if (timer >= 3) {
			timer = 0;
			stage ++;
			// exit
			sc_dialog(incubus_dialogue, "Don’t worry; you’re in good hands. \nYour mind is as good as repaired.", -1);
		}
		break;
	case 24:
		// repeated
		if (timer >= 3) {
			timer = 0;
			stage ++;
			// exit
			sc_dialog(incubus_dialogue, "Now, just sit tight for a bit.", -1);
		}
		break;
	case 25:
		// repeated
		if (timer >= 3) {
			timer = 0;
			stage ++;
			// exit
			sprite_index = spr_transition;
		}
		break;
}
show_debug_message(stage);
