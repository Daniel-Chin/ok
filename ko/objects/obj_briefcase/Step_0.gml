/// @description Insert description here
// You can write your code in this editor
switch (state) {
	case FALLING:
		vspeed += global.GRAVITY * global.spf;
		break;
	case RECALL:
		var delta_x = player.x - x;
		var delta_y = player.y - y;
		var distance = distance_to_object(player) + 5;	// prevent inf
		hspeed = delta_x / distance * global.BRIEFCASE_SPEED;
		vspeed = delta_y / distance * global.BRIEFCASE_SPEED;
		break;
}
