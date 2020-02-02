/// @description Insert description here
// You can write your code in this editor
var to_print = "";
switch (state) {
	case READY:
		bubble_x = x + offset_direction * room_width * .08;
		sprite_index = speaker_sprite;
		x -= offset_direction * room_width * .4;
		target_length = string_length(text);
		//image_xscale = 2;
		//image_yscale = 2;
		state ++;
		break;
	case APPEAR:
		if (y <= room_height * .9) {
			state ++;
			sc_move_all_dialogs(id, 0);
		}
		break;
	case PRINTING:
		print_progress += global.spf;
		var printed_len = print_progress * global.CHARACTER_PER_SECOND;
		if (printed_len >= target_length) {
			state ++;
			break;
		}
		to_print = string_copy(text, 1, printed_len);
		break;
	case WAITING:
		to_print = text;
		age += global.spf;
		if (age > global.DIALOG_STAY) {
			state ++;
			break;
		}
		break;
	case FADE_OUT:
		to_print = text;
		image_alpha -= global.spf / global.DIALOG_FADE;
		draw_set_alpha(image_alpha);
		if (image_alpha <= 0) {
			image_alpha = 0;
			if (lower != -1) {
				lower.upper = -1;
			}
			draw_set_alpha(1);
			instance_destroy();
			exit;
		}
		break;
}
draw_roundrect_ext(
	bubble_x - room_width * .4, y - room_height * .08, 
	bubble_x + room_width * .4, y + room_height * .08, 
	40, 40, true
);
draw_text_transformed(bubble_x, y, to_print, 2, 2, 0);
draw_set_alpha(1);
