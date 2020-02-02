/// @description Insert description here
// You can write your code in this editor
if (stage >= 0) {
	age += global.spf;
	if (stage < array_length_1d(todo)) {
		var job = todo[stage];
		if (job[0] <= age) {
			stage ++;
			script_execute(
				job[1], 
				job[2], 
				job[3], 
				job[4], 
			);
		}
	} else {
		instance_destroy();
	}
}
