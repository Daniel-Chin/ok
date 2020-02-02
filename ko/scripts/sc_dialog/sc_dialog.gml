var dialog = instance_create_layer(room_width * .5, room_height * 1.1, "Dialog", obj_dialog);
dialog.speaker_sprite = argument0;
dialog.text = argument1;
dialog.bubble_offset = argument2;
dialog.upper = global.root_dialog;
global.root_dialog.lower = dialog;
global.root_dialog = dialog;
sc_move_all_dialogs(dialog, -5);
dialog.state = dialog.READY;
