/// @description Insert description here
// You can write your code in this editor
if(room_get_name(room) == "setup"){
	if(audio_group_is_loaded(bgm)){
		room_goto_next();
	} else {
		exit;
	}
}

if(instance_exists(oEnemy)){
	if(oEnemy.state == "ATTACK"){
		audio_group_set_gain(bgm,0,100);
		audio_sound_gain(uBattle,1,0);
		if(!audio_is_playing(uBattle)){
			var btl = audio_play_sound(uBattle,10,1);
			audio_sound_set_track_position(btl,0.5);
		} 
	} else {
			audio_group_set_gain(bgm,1,200);
			fadeOut(uBattle);
		}
}  else {
		audio_group_set_gain(bgm,1,200);
		fadeOut(uBattle);
	}
	
//loopers
var roomName = string_digit_clean(room_get_name(room));
switch(roomName){
case "debugRoom": 
loop(uBoss2); 
break;
	
case "forest":
loop(uForest);
break;

case "basement":
loop(uFactory2);
}