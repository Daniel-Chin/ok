/// @description Insert description here
// You can write your code in this editor
event_inherited();
progress += global.spf;
switch (intention) {
	case WANDER:
		hspeed += facing * global.BOSS_SPEED * global.spf;
		if (progress > 4) {
			progress = 0;
			intention = choose(SHOOT, SMASH);
		}
		break;
}
	var projectile = instance_create_layer(x, y, "Instances", obj_projectile);
	if ((global.player).x - x > 0) {
		projectile.hspeed = + global.PROJECTILE_SPEED;
	} else {
		projectile.hspeed = - global.PROJECTILE_SPEED;
	}
	projectile.image_xscale = 2;
	projectile.image_yscale = 2;
