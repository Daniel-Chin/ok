var dialog = instance_create_layer(0, 0, "Dialog", obj_dialog);
dialog.speaker_sprite = argument0;
dialog.text = argument1;
dialog.offset_direction = argument2;
dialog.upper = global.root_dialog;
global.root_dialog.lower = dialog;
global.root_dialog = dialog;
dialog.state = dialog.READY;
