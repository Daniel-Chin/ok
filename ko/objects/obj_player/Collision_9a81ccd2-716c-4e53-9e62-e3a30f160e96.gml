/// @description Insert description here
// You can write your code in this editor
if (invincible_timeout <= 0) {
	invincible_timeout = global.INVINCIBLE_TIME;
	state = HURT;
	hp --;
	hspeed += other.facing * global.ENEMY_KNOCKBACK;
	vspeed -= global.ENEMY_KNOCKUP;
}
