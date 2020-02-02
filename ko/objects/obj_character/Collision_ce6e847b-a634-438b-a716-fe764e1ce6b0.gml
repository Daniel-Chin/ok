/// @description Insert description here
// You can write your code in this editor
var up = false;
if (abs(bbox_bottom - other.bbox_top) < global.GRAVITY * 1) {	// to be proof of velocity gained from 1.5s of free fall
	can_jump = global.OFF_PLATFORM_JUMP_TOLERANCE;
	vspeed = min(vspeed, other.vspeed - .3);
	y -= bbox_bottom - other.bbox_top + 1;
	up = true;
	last_ground = other;
}
if (hspeed - other.hspeed < 0 && abs(bbox_left - other.bbox_right) < global.MAX_SPEED) {
	hspeed = other.hspeed;
	if (up) {
		hspeed -= 3;
	} else {
		hspeed += 3;
	}
}
if (hspeed - other.hspeed > 0 && abs(bbox_right - other.bbox_left) < global.MAX_SPEED) {
	hspeed = other.hspeed - .3;
	if (up) {
		hspeed += 3;
	} else {
		hspeed -= 3;
	}
}
