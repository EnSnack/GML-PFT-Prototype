/// @description Insert description here
// You can write your code in this editor
move_speed = 200;
jump_speed = 150;
vspd = 0;

movement_inputs[0] = ord("D");
movement_inputs[1] = ord("W");
movement_inputs[2] = ord("A");
movement_inputs[3] = ord("S");

move_dir = 0;
moving = 0;
crawl = 0;
jumping = 0;
falling = 0;
descending = 0;
move_xinput = 0;
move_yinput = 0;
speed_y = 0;

/*if(keyboard_check_pressed(ord("W"))) {
	vspeed = -jump_speed_this_frame;
} else if(keyboard_check_released(ord("W")) && vspeed <= 0) {
	vspeed = (-jump_speed_this_frame)*0.5;
}*/