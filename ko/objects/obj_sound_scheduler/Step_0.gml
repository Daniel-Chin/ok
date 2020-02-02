/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < size; i ++) {
	if (array[i, 1] > 0) {
		array[i, 1] -= global.spf;
		if (array[i, 1] <= 0) {
			audio_play_sound(array[i, 0], 0, false);
		}
	}
}
