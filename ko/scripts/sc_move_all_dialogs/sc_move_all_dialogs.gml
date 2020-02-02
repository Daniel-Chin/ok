var dialog = argument0;
dialog.vspeed = argument1;
var next = dialog.upper;
if (next != -1) {
	sc_move_all_dialogs(next, dialog.vspeed);
}
