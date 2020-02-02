/// @description Insert description here
// You can write your code in this editor
if (lower != -1) {
	vspeed = (lower.y - room_height * .2 - y) * .03;
}
var to_print = "";
switch (state) {
	case READY:
		bubble_offset = - offset_direction * room_width * .47;
		sprite_index = speaker_sprite;
		target_x = room_width * (.5 + offset_direction * .4);
		target_length = string_length(text);
		//image_xscale = 2;
		//image_yscale = 2;
		state ++;
		break;
	case APPEAR:
		hspeed = (target_x - x) * .05;
		if (abs(x - target_x) <= room_height * .01) {
			state ++;
			x = target_x;
			hspeed = 0;
		}
	case PRINTING:
		if (abs(x - .5 * room_width) < .7 * room_width) {
			print_progress += global.spf;
		}
		var printed_len = print_progress * global.CHARACTER_PER_SECOND;
		if (printed_len >= target_length) {
			state ++;
			x = target_x;
			hspeed = 0;
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
var smart_top = y - room_height * .08;
if (upper != -1) {
	smart_top = max(smart_top, upper.y + room_height * .12);
}
draw_roundrect_ext(
	x + bubble_offset - room_width * .4, smart_top, 
	x + bubble_offset + room_width * .4, y + room_height * .08, 
	40, 40, true
);
draw_text_transformed(x + bubble_offset, (smart_top + y + room_height * .08) / 2, to_print, 2, 2, 0);
draw_set_alpha(1);
