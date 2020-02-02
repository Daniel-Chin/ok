/// @description Insert description here
if (lower != -1 && instance_exists(lower)) {
	vspeed = (lower.y - global.HEIGHT * .2 - y) * .03;
}
var to_print = "";
switch (state) {
	case READY:
		bubble_offset = global.WIDTH * (- offset_direction * .07);
		sprite_offset = global.WIDTH * (+ offset_direction * .4);
		target_length = string_length(text);
		state ++;
		x = global.WIDTH * (.5 + offset_direction);
		y = global.HEIGHT * .9;
		break;
	case APPEAR:
		hspeed = (global.WIDTH * .5 - x) * .05;
		if (abs(x - global.WIDTH * .5) <= global.WIDTH * .01) {
			state ++;
			x = global.WIDTH * .5;
			hspeed = 0;
		}
	case PRINTING:
		if (abs(x - .5 * global.WIDTH) < .7 * global.WIDTH) {
			print_progress += global.spf;
		}
		var printed_len = print_progress * global.CHARACTER_PER_SECOND;
		if (printed_len >= target_length) {
			state ++;
			x = global.WIDTH * .5;
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
var smart_top = y - global.HEIGHT * .08;
if (upper != -1) {
	smart_top = max(smart_top, upper.y + global.HEIGHT * .12);
}
draw_set_color(c_black);
draw_set_alpha(min(.7, image_alpha));
draw_roundrect_ext(
	x + bubble_offset - global.WIDTH * .4, smart_top, 
	x + bubble_offset + global.WIDTH * .4, y + global.HEIGHT * .08, 
	40, 40, false
);
draw_set_color(c_white);
draw_set_alpha(image_alpha);
draw_roundrect_ext(
	x + bubble_offset - global.WIDTH * .4, smart_top, 
	x + bubble_offset + global.WIDTH * .4, y + global.HEIGHT * .08, 
	40, 40, true
);
draw_text_transformed(x + bubble_offset, (smart_top + y + global.HEIGHT * .08) / 2, to_print, 1, 1, 0);
draw_sprite_ext(speaker_sprite, 0, x + sprite_offset, y, .4, .4, 0, c_white, image_alpha);
draw_set_alpha(1);
