/// @description Insert description here
// You can write your code in this editor
if (state == 1) exit;
if (! combo_counted) {
	combo_counted = true;
	player.combo ++;
	player.combo_timeout = global.COMBO_TIMEOUT;
}
if (sc_damage(other, damage, facing)) {
	exit;
}
reverse_knockback = max(reverse_knockback, 1 / (abs(other.x - player.x) / bbox_width + .4));
