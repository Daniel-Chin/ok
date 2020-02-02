/// @description Insert description here
// You can write your code in this editor
global.spf = 1 / game_get_speed(gamespeed_fps);
if (keyboard_check(ord("3")) && keyboard_check(ord("6"))) {
	game_restart();
}
