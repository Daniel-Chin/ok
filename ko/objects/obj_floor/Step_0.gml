/// @description Insert description here
// You can write your code in this editor
if (ready) {
	var segment = path[segment_i];
	progress += segment[0] * global.spf;
	if (progress >= 1) {
		progress = 0;
		x = segment[1];
		y = segment[2];
		segment_i = (segment_i + 1) % array_length_1d(path);
		var segment = path[segment_i];
		hspeed = (segment[1] - x) * segment[0] * global.spf;
		vspeed = (segment[2] - y) * segment[0] * global.spf;
	}
}
