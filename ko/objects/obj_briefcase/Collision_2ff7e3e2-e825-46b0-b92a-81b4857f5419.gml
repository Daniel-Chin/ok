/// @description Insert description here
// You can write your code in this editor
if (state == FLY) {
	sc_damage(other, 1, fly_direction);
	state = RECALL;
} else if (state == RECALL) {
	sc_damage(other, 1, hspeed / abs(hspeed));
}
