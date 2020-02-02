var who = argument0;
var damage = argument1;
var knockback_direction = argument2;
if (who.invincibility_timeout <= 0) {
	who.hp -= damage;
	if (who.hp <= 0) {
		if (! who.is_boss) {
			instance_destroy(who);
		}
		audio_play_sound(choose(demondeath1, demondeath2, demondeath3), 0, false);
		return true;
	}
	audio_play_sound(demonpain, 0, false);
	who.hspeed += knockback_direction * global.KNOCKBACK_POWER;
	who.vspeed = - global.KNOCKUP_POWER;
	who.invincibility_timeout = global.ENEMY_INVINCIBILITY;
}
return false;
