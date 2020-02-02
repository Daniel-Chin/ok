var sound_id = argument0;
var delay = argument1;
var sched = global.sound_sched;
for (var i = 0; i < sched.size; i ++) {
	if (sched.array[i, 0] == sound_id && sched.array[i, 1] <= 0) {
		sched.array[i, 1] = delay;
		exit;
	}
}
sched.array[sched.size, 0] = sound_id;
sched.array[sched.size, 1] = delay;
sched.size ++;
show_debug_message(sched.array)