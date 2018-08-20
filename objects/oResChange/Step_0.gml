/// @description Insert description here
// You can write your code in this editor
switch (screenRes) {
	case 0:
	width = 240;
	height = 160;
	break;
	
	case 1:
	width = 800;
	height = 480;
	break;
	
	case 2:
	width = 1280;
	height = 800;
	break;
}

ini_open("game_settings.ini");
ini_write_real("settings", "width", width);
ini_write_real("settings", "height", height);
ini_close();

window_set_size(width, height);