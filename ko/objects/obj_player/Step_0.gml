/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (can_jump > 0) {
	can_jump -= global.spf;
}
if (throw_cooldown > 0) {
	throw_cooldown -= global.spf;
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
	if (invincible_timeout <= 0) {
		visible = true;
	} else {
		visible = floor(invincible_timeout * 2 / global.INVINCIBLE_BLINK) % 2 == 0;
	}
}

if (state == IDLE) {
	var did_interrupt_recall = false;
	if (can_jump > 0 && keyboard_check_pressed(global.KEY_JUMP)) {
		can_jump = -1;
		vspeed = - global.JUMP_POWER;
		did_interrupt_recall = true;
	}
	if (keyboard_check(global.KEY_JUMP)) {
		if (vspeed < 0) {
			vspeed -= global.FORCE_JUMP * global.spf;
		} else if (! has_briefcase) {
			vspeed = min(vspeed, global.GLIDE_SPEED);
		}
	}
	if        (keyboard_check(vk_left )) {
		hspeed = hspeed * (1 - global.WALK_APPROACH) - global.WALK_SPEED * global.WALK_APPROACH;
		facing = LEFT;
		did_interrupt_recall = true;
	} else if (keyboard_check(vk_right)) {
		hspeed = hspeed * (1 - global.WALK_APPROACH) + global.WALK_SPEED * global.WALK_APPROACH;
		facing = RIGHT;
		did_interrupt_recall = true;
	}
	if (keyboard_check_pressed(global.KEY_ATTACK)) {
		if (has_briefcase) {
			if (combo == 2) {
				state = SMASH;
			} else {
				state = ATTACK;
			}
			attack_progress = 0;
			attack_stage = PREPARE;
		}
	}
	if (has_briefcase && keyboard_check_pressed(global.KEY_THROW) && throw_cooldown <= 0) {
		has_briefcase = false;
		throw_cooldown = global.THROW_COOLDOWN;
		my_briefcase = instance_create_layer(x, y, "Instances", obj_briefcase);
		my_briefcase.state = my_briefcase.FLY;
		my_briefcase.fly_direction = facing;
		my_briefcase.hspeed = facing * global.BRIEFCASE_SPEED;
		my_briefcase.player = id;
		did_interrupt_recall = true;
	}
	if (did_interrupt_recall) {
		recall_timeout = global.RECALL_HOLD;
	}
	if (! has_briefcase && keyboard_check(global.KEY_THROW)) {
		// Recall           
		recall_timeout -= global.spf;
		if (recall_timeout <= 0) {
			my_briefcase.state = my_briefcase.RECALL;
		}
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
if (left_incoming > 0) {
	left_incoming --;
	if (state == IDLE && keyboard_check(vk_right)) {
		state = BLOCKING;
		block_progress = 0;
		facing = LEFT;
	}
}
if (right_incoming > 0) {
	right_incoming --;
	if (state == IDLE && keyboard_check(vk_left)) {
		state = BLOCKING;
		block_progress = 0;
		facing = RIGHT;
	}
}
if (state == BLOCKING) {
	block_progress += global.spf;
	if (block_progress > global.BLOCK_TIME) {
		state = IDLE;
	}
}
