/// @description Insert description here
// You can write your code in this editor
if (abs(bbox_bottom - other.bbox_top) < global.GRAVITY * 1) {	// to be proof of velocity gained from 1.5s of free fall
	can_jump = global.OFF_PLATFORM_JUMP_TOLERANCE;
	vspeed = other.vspeed - .3;
	y -= bbox_bottom - other.bbox_top + 1;
}
if (
	hspeed < 0 && abs(bbox_left - other.bbox_right) < global.MAX_SPEED
||
	hspeed > 0 && abs(bbox_right - other.bbox_left) < global.MAX_SPEED
) {
	hspeed = other.hspeed;
}
