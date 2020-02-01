/// @description Insert description here
// You can write your code in this editor
vspeed += global.GRAVITY * global.spf;
var drag = FRICTION * global.spf;
if (can_jump <= 0) {
	drag *= .3;
}
if (hspeed < 0) {
	hspeed = min(0, hspeed + drag);
	hspeed = max(hspeed, - global.MAX_SPEED);
} else {
	hspeed = max(0, hspeed - drag);
	hspeed = min(hspeed, + global.MAX_SPEED);
}
