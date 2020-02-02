/// @description Insert description here
// You can write your code in this editor
vspeed += global.GRAVITY * global.spf;
var drag = FRICTION * global.spf;
var zero = 0;
if (can_jump <= 0) {
	drag *= .3;
} else {
	zero = last_ground.hspeed;
}
if (hspeed < zero) {
	hspeed = min(zero, hspeed + drag);
	hspeed = max(hspeed, - global.MAX_SPEED);
} else {
	hspeed = max(zero, hspeed - drag);
	hspeed = min(hspeed, + global.MAX_SPEED);
}
