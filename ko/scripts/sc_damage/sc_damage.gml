var who = argument0;
var damage = argument1;
var knockback_direction = argument2;
if (who.invincibility_timeout <= 0) {
	//who.hp -= damage;////
	if (who.hp <= 0) {
		instance_destroy(who);
		return true;
	}
	who.hspeed += knockback_direction * global.KNOCKBACK_POWER;
	who.vspeed = - global.KNOCKUP_POWER;
	who.invincibility_timeout = global.ENEMY_INVINCIBILITY;
}
return false;
