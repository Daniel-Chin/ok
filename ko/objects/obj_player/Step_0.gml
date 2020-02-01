/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (can_jump > 0) {
	can_jump -= global.spf;
}
if (combo > 0) {
	combo_timeout -= global.spf;
	if (combo_timeout < 0) {
		combo = 0;
	}
}
if (invincible_timeout > 0) {
	invincible_timeout -= global.spf;
	if (state == HURT && invincible_timeout < global.INVINCIBLE_FREE_TIME) {
		state = IDLE;
	}
}

if (state == IDLE) {
	if (can_jump > 0 && keyboard_check(global.KEY_JUMP)) {
		can_jump = -1;
		vspeed = - global.JUMP_POWER;
	}
	if        (keyboard_check(vk_left )) {
		hspeed = hspeed * (1 - global.WALK_APPROACH) - global.WALK_SPEED * global.WALK_APPROACH;
		facing = LEFT;
	} else if (keyboard_check(vk_right)) {
		hspeed = hspeed * (1 - global.WALK_APPROACH) + global.WALK_SPEED * global.WALK_APPROACH;
		facing = RIGHT;
	}
	if (keyboard_check(global.KEY_ATTACK)) {
		if (combo == 2) {
			state = SMASH;
		} else {
			state = ATTACK;
		}
		attack_progress = 0;
		attack_stage = PREPARE;
	}
}

if (state == ATTACK || state == SMASH) {
	attack_progress += global.spf;
	switch (attack_stage) {
		case PREPARE:
			if (
				state == ATTACK && attack_progress < global.ATTACK_PREPARE_TIME
			||
				state == SMASH && attack_progress < global.SMASH_PREPARE_TIME
			) {
				break;
			}
			attack_progress = 0;
			attack_stage ++;
			var attack_area = instance_create_layer(x, y, "Instances", obj_attack_area);
			attack_area.facing = facing;
			attack_area.level = combo;
			attack_area.player = id;
			attack_area.state = 1;
			break;
		case FORWARD:
			if (
				state == ATTACK && attack_progress < global.ATTACK_FORWARD_TIME
			||
				state == SMASH && attack_progress < global.SMASH_FORWARD_TIME
			) {
				hspeed += facing * global.ATTACK_FORWARD_POWER;
				break;
			}
			attack_progress = 0;
			attack_stage ++;
			break;
		case RECOVER:
			if (
				state == ATTACK && attack_progress < global.ATTACK_RECOVER_TIME
			||
				state == SMASH && attack_progress < global.SMASH_RECOVER_TIME
			) {
				break;
			}
			state = IDLE;
	}
}
