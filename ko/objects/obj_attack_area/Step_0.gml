/// @description Insert description here
// You can write your code in this editor
age += global.spf;
if (state == 1) {
	state ++;
	image_yscale = 2;
	image_xscale = - facing * image_yscale;
	if (level >= 2) {
		lifespan = global.SMASH_DURATION;
		damage = global.SMASH_DAMAGE;
	} else {
		lifespan = global.ATTACK_DURATION;
		damage = global.ATTACK_DAMAGE;
	}
} else if (state == 2) {
	if (age > lifespan) {
		instance_destroy();
	}
	if (reverse_knockback > 0) {
		player.hspeed -= reverse_knockback * facing * global.REVERSE_KOCKBACK_POWER * global.spf;
	}
	vspeed = player.vspeed;
	hspeed = player.hspeed;
}
