/// @description Insert description here
// You can write your code in this editor
if (! combo_counted) {
	combo_counted = true;
	player.combo ++;
	player.combo_timeout = global.COMBO_TIMEOUT;
}
sc_damage(other, damage, facing);
reverse_knockback = max(reverse_knockback, 1 / (abs(other.x - player.x) / bbox_width + .4));
