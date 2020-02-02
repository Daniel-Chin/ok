var dialog = instance_create_layer(room_width * (.5 + argument2 * 1.7), room_height * .9, "Dialog", obj_dialog);
dialog.speaker_sprite = argument0;
dialog.text = argument1;
dialog.offset_direction = argument2;
dialog.upper = global.root_dialog;
global.root_dialog.lower = dialog;
global.root_dialog = dialog;
dialog.state = dialog.READY;
