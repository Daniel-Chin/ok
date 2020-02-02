/// @description Insert description here
// You can write your code in this editor
global.WIDTH = 1920;
global.HEIGHT = 1080;

global.GRAVITY = 50;
global.JUMP_POWER = 10;
global.WALK_SPEED = 5;
global.WALK_APPROACH = .2;
global.OFF_PLATFORM_JUMP_TOLERANCE = .1; // in seconds
global.MAX_SPEED = 7;
global.FORCE_JUMP = 35;
global.GLIDE_SPEED = 3;

global.KEY_JUMP = vk_space;
global.KEY_ATTACK = ord("A"); 
global.KEY_THROW = ord("D");

global.ATTACK_FORWARD_POWER = .35;
global.ATTACK_PREPARE_TIME = .2;
global.ATTACK_FORWARD_TIME = .25;
global.ATTACK_RECOVER_TIME = .3;
global.SMASH_FORWARD_POWER = .7;
global.SMASH_PREPARE_TIME = .3;
global.SMASH_FORWARD_TIME = .2;
global.SMASH_RECOVER_TIME = .4;
global.INVINCIBLE_TIME = 1;	// You become invincible when you are attacked
global.INVINCIBLE_FREE_TIME = .5;	// During this time you can control the character while it's invincible

global.ATTACK_DAMAGE = 1;
global.SMASH_DAMAGE = 2;
global.ATTACK_DURATION = .4;
global.SMASH_DURATION = .6;
global.COMBO_TIMEOUT = 1.3;

global.KNOCKBACK_POWER = 4;
global.KNOCKUP_POWER = 8;
global.ENEMY_KNOCKBACK = 10;
global.ENEMY_KNOCKUP = 8;
global.REVERSE_KOCKBACK_POWER = 40;
global.ENEMY_INVINCIBILITY = 1;

global.INVINCIBLE_BLINK = .1;

global.BRIEFCASE_SPEED = 8;
global.THROW_COOLDOWN = 1;
global.RECALL_HOLD = 2;

global.ENEMY_SPEED = 2;
global.ENEMY_WALK_APPROACH = 0.02;
global.ENEMY_RETURN = 50;
global.ENEMY_JUMP_RARE = 10;	// in seconds
global.ENEMY_JUMP_POWER = 15;
global.RANGED_ENEMY_Y_TOLERANCE = 50;
global.RANGED_ENEMY_FIRE_INTERVAL = 3;
global.PROJECTILE_SPEED = 5;

global.BLOCK_TIME = .8;
global.PLAYER_HP_REGEN_INTERVAL = 30;

draw_set_halign(fa_center);
draw_set_valign(fa_center);
global.root_dialog = -1;
global.CHARACTER_PER_SECOND = 20;
global.DIALOG_STAY = 3;
global.DIALOG_FADE = 1;

global.CAMERA_SPEED = 2000;
global.VIEW_WIDTH = 960;
global.VIEW_HEIGHT = 540;
global.room_col = 0;
global.room_row = 0;

global.font_36 = font_add("PixelOperator8-Bold.ttf", 36, true, false, 32, 128);
global.font_48 = font_add("PixelOperator8-Bold.ttf", 48, true, false, 32, 128);
draw_set_font(global.font_36);
