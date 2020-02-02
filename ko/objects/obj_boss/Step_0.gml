/// @description Insert description here
// You can write your code in this editor
event_inherited();
progress += global.spf;
vspeed -= global.BOSS_FLOAT * global.spf;
image_xscale = facing;
switch (intention && hp > 0) {
	case WANDER:
		sprite_index = boss_walk;
		hspeed += facing * global.BOSS_SPEED * global.spf;
		if (x > room_width * .9) {
			facing = -1;
		}
		if (x < room_width * .1) {
			facing = +1;
		}
		if (progress > 6) {
			progress = 0;
			intention = choose(SHOOT, SMASH);
			shoot_stage = 0;
			smash_stage = 0;
			if ((global.player).x - x > 0) {
				facing = +1;
			} else {
				facing = -1;
			}
		}
		break;
	case SHOOT:
		sprite_index = boss_fireatk;
		var TIMES = [1, .3, .3];
		if (shoot_stage < 3) {
			if (progress > TIMES[shoot_stage]) {
				shoot_stage ++;
				progress = 0;
				var projectile = instance_create_layer(x + facing * 90, y + 20, "Proj", obj_boss_bullet);
				projectile.hspeed = facing * global.PROJECTILE_SPEED;
				projectile.image_xscale = 1;
				projectile.image_yscale = 1;
			}
		} else if (shoot_stage == 3) {
			if (progress > 1) {
				progress = 0;
				shoot_stage ++;
			}
		} else {
			intention = choose(SHOOT, SMASH);
			progress = 0;
			smash_stage = 0;
			if ((global.player).x - x > 0) {
				facing = +1;
			} else {
				facing = -1;
			}
		}
		break;
	case SMASH:
		if (smash_stage == 0) {
			sprite_index = boss_fly;
			var delta_x = (global.player).x - x;
			var delta_y = (global.player).y - 400 - y;
			hspeed = delta_x * .05;
			vspeed = delta_y * .05;
			if (progress > 2) {
				progress = 0;
				hspeed = 0; 
				vspeed = 20;
				smash_stage ++;
			}
		} else if (smash_stage == 1) {
			sprite_index = boss_slamatk;
			if (can_jump > 0) {
				smash_stage ++;
				progress = 0;
			}
		} else {
			sprite_index = boss_stand;
			if (progress > 4) {
				progress = 0;
				intention = choose(WANDER, SHOOT);
				shoot_stage = 0;
				if ((global.player).x - x > 0) {
					facing = +1;
				} else {
					facing = -1;
				}
			}
		}
		break;
}

if (hp <= 0) {
	sprite_index = boss_death;
	if (image_index >= 16) {
		image_speed = 0;
	}
	hspeed = 0;
}
