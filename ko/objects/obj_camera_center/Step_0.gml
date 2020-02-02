/// @description Insert description here
// You can write your code in this editor
global.room_col = (global.player).x div global.WIDTH;
global.room_row = (global.player).y div global.HEIGHT;
var target_x = (global.room_col + .5) * global.WIDTH;
var target_y = (global.room_row + .5) * global.HEIGHT;
var camera_travel = global.CAMERA_SPEED * global.spf;
if (abs(x - target_x) <= camera_travel) {
	x = target_x;
} else {
	if (target_x > x) {
		x += camera_travel;
	} else {
		x -= camera_travel;
	}
}
if (abs(y - target_y) <= camera_travel) {
	y = target_y;
} else {
	if (target_y > y) {
		y += camera_travel;
	} else {
		y -= camera_travel;
	}
}
