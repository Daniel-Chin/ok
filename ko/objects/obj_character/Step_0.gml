/// @description Insert description here
// You can write your code in this editor
vspeed += global.GRAVITY * global.spf;
if (hspeed < 0) {
	hspeed = min(0, hspeed + global.FRICTION * global.spf);
	hspeed = max(hspeed, - global.MAX_SPEED);
} else {
	hspeed = max(0, hspeed - global.FRICTION * global.spf);
	hspeed = min(hspeed, + global.MAX_SPEED);
}
