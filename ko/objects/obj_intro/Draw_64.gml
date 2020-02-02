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
		draw_text_transformed(room_width * .7, room_height * .7, "OK Studio", 3, 3, 0);
		draw_set_color(c_white);
		draw_set_alpha(1);
		break;
	case -3:
		// repeated
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_set_color(c_black);
		draw_text_transformed(room_width * .7, room_height * .7	, "OK Studio", 3, 3, 0);
		draw_set_color(c_white);
		break;
}
