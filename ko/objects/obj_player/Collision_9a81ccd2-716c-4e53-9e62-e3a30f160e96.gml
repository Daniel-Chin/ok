/// @description Insert description here
// You can write your code in this editor
if (invincible_timeout <= 0) {
	if (other.blockable && state == BLOCKING) {
		instance_destroy(other);
		exit;
	}
	invincible_timeout = global.INVINCIBLE_TIME;
	state = HURT;
	hp --;
	if (hp_regen_timeout < 0) {
		hp_regen_timeout = global.PLAYER_HP_REGEN_INTERVAL;
	}
	var knockback_direction;
	if (other.x > x) {
		knockback_direction = -1;
	} else {
		knockback_direction = 1;
	}
	hspeed = knockback_direction * global.ENEMY_KNOCKBACK;
	vspeed = - global.ENEMY_KNOCKUP;
	y += vspeed * 2;
}
