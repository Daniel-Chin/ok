/// @description Insert description here
// You can write your code in this editor
event_inherited();
IDLE = 0; ATTACK = 1; SMASH = 2; HURT = 3;
state = IDLE;

can_jump = 0;
combo = 0;
combo_timeout = 0;
invincible_timeout = 0;
attack_progress = 0;

LEFT = -1;
RIGHT = 1;
facing = RIGHT;

PREPARE = 0;
FORWARD = 1;
RECOVER = 2;
attack_stage = PREPARE;
