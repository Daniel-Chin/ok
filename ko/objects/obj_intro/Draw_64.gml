event_inherited();
switch (stage) {
	case -5:
		// repeated
		draw_rectangle(0, 0, room_width, room_height, false);
		break;
	case -4:
		// repeated
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_set_color(c_black);
		draw_set_alpha(timer / 1);
		draw_text_transformed(room_width * .7, room_height * .7, "OK Studios", 3, 3, 0);
		draw_set_color(c_white);
		draw_set_alpha(1);
		break;
	case -3:
		// repeated
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_set_color(c_black);
		draw_text_transformed(room_width * .7, room_height * .7	, "OK Studios", 3, 3, 0);
		draw_set_color(c_white);
		break;
	case -2:
		// repeated
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_set_color(c_black);
		draw_set_alpha(1 - timer / 1);
		draw_text_transformed(room_width * .7, room_height * .7, "OK Studios", 3, 3, 0);
		draw_set_color(c_white);
		draw_set_alpha(1);
		break;
	case -1:
		// repeated
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_set_color(c_black);
		draw_set_alpha(timer / 1);
		draw_text_transformed(room_width * .7, room_height * .7, "Global Game Jam, 2020", 3, 3, 0);
		draw_set_color(c_white);
		draw_set_alpha(1);
		break;
	case 0:
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_set_color(c_black);
		draw_text_transformed(room_width * .7, room_height * .7, "Global Game Jam, 2020", 3, 3, 0);
		draw_set_color(c_white);
		break;
	case 1:
		// repeated
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_set_color(c_black);
		draw_set_alpha(1 - timer / 1);
		draw_text_transformed(room_width * .7, room_height * .7, "Global Game Jam, 2020", 3, 3, 0);
		draw_set_color(c_white);
		draw_set_alpha(1);
		break;
	case 2:
		// repeated
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_sprite_ext(spr_title, floor(timer / .1) % 3, 0, 0, 2, 2, 0, c_white, timer / 1);
		break;
	case 3:
		draw_sprite_ext(spr_title, floor(timer / .1) % 3, 0, 0, 2, 2, 0, c_white, 1);
		break;
}
