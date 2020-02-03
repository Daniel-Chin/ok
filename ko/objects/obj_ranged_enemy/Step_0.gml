/// @description Insert description here
// You can write your code in this editor
event_inherited();
if (cooldown > 0) {
	cooldown -= global.spf;
}
if (
	cooldown <= 0 && 
	abs((global.player).y - y) < global.RANGED_ENEMY_Y_TOLERANCE && 
	global.room_col == room_col &&
	global.room_row == room_row
) {
	cooldown = global.RANGED_ENEMY_FIRE_INTERVAL;
	var projectile = instance_create_layer(x, y, "Instances", obj_projectile);
	if ((global.player).x - x > 0) {
		projectile.hspeed = + global.PROJECTILE_SPEED;
	} else {
		projectile.hspeed = - global.PROJECTILE_SPEED;
	}
	projectile.image_xscale = 2;
	projectile.image_yscale = 2;
}
hspeed = 0;
vspeed = 0;
