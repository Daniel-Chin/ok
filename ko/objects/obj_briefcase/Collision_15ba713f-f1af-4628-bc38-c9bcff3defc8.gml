/// @description Insert description here
// You can write your code in this editor
if (state == FLY) {
	state = FALLING;
	x -= hspeed * 2;
	hspeed = 0;
	vspeed = -8;
} else if (state == FALLING) {
	state = DROPPED;
	vspeed = 0;
}
