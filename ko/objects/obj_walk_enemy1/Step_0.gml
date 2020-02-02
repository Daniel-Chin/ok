/// @description Insert description here
// You can write your code in this editor
event_inherited();
if (my_platform == -1) {
	exit;
}
if (x - my_platform.bbox_left  < global.ENEMY_RETURN) {
	facing = +1;
}
if (my_platform.bbox_right - x < global.ENEMY_RETURN) {
	facing = -1;
}
hspeed = global.ENEMY_WALK_APPROACH * facing * global.ENEMY_SPEED + (1 - global.ENEMY_WALK_APPROACH) * hspeed;
if (can_jump > 0 && irandom(global.ENEMY_JUMP_RARE / global.spf) < 1) {
	can_jump = -1;
	vspeed = - global.ENEMY_JUMP_POWER;
}
