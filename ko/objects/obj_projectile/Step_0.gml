/// @description Insert description here
// You can write your code in this editor
if (abs((global.player).y - y) < global.RANGED_ENEMY_Y_TOLERANCE) {
	if ((
		(global.player).x - x
	) * (
		(global.player).x - (x + hspeed / global.spf * global.BLOCK_TIME * .5)
	) < 0) {
		if (hspeed > 0) {
			global.player.left_incoming ++;
		} else {
			global.player.right_incoming ++;
		}
	}
}
