///@description loop(audioObj)
soundTable = ds_map_create();
ds_map_add(soundTable,u_boss1,u_boss1cont);
ds_map_add(soundTable,u_boss2,u_boss2cont);
ds_map_add(soundTable,u_main,u_maincont);
ds_map_add(soundTable,u_room,u_roomcont);

if(!audio_is_playing(argument0) && !audio_is_playing(ds_map_find_value(soundTable,argument0))){
	global.currentSong = audio_play_sound(argument0, 10, 0);
}

if (audio_sound_get_track_position(global.currentSong) >= audio_sound_length(global.currentSong) - 0.04) {
	global.currentSong = audio_play_sound(ds_map_find_value(soundTable,argument0), 10, 0);
}
