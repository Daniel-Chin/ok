/// @description Insert description here
// You can write your code in this editor
event_inherited();
WANDER = 0; SHOOT = 2; SMASH = 3;
intention = WANDER;
progress = 0;
facing = 1;
shoot_stage = 0;
smash_stage = 0;
sprite_index = boss_walk;
audio_play_sound(pigeon2, 0, false);
audio_play_sound(u_boss2, 0, false);
hp = 12;
global.WALK_SPEED *= 1.4;
FRICTION = 4;
is_boss = true;
