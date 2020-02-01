/// @description Insert description here
// You can write your code in this editor
if (abs(bbox_bottom - other.bbox_top) < global.JUMP_POWER * 1.5) {	// to be proof of velocity gained from 1.5s of free fall
	can_jump = global.OFF_PLATFORM_JUMP_TOLERANCE;
	vspeed = other.vspeed -.5;
}
if (
	hspeed < 0 && abs(bbox_left - other.bbox_right) < global.JUMP_POWER
||
	hspeed > 0 && abs(bbox_right - other.bbox_left) < global.JUMP_POWER
) {
	hspeed = other.hspeed;
}
