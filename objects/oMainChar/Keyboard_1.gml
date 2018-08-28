/// @description Insert description here
// You can write your code in this editor
seconds_passed = delta_time/1000000;
move_speed_this_frame = move_speed*seconds_passed;
jump_speed_this_frame = jump_speed*seconds_passed;

move_xinput = 0;
move_yinput = 0;
 
for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    var this_key = movement_inputs[i];
    if keyboard_check(this_key) {
		var this_angle = i*90;
		if(keyboard_check_pressed(ord("S")) && !falling) {
			crawl = !crawl;
			break;
		}
		if(this_key == ord("A") || this_key == ord("D")) {
	        move_xinput += lengthdir_x(1, this_angle);
		}
    }
}
 
moving = ( point_distance(0,0,move_xinput,0) > 0 ); 
 
if moving{
    move_dir = point_direction(0,0,move_xinput,move_yinput);
	if(move_dir > 90 && move_dir < 270) {
		image_xscale = -1;
	}
	else if(move_dir < 90 || move_dir > 270) {
		image_xscale = 1;	
	}
	if(crawl) {
		sMovementChar(move_speed_this_frame/2, move_dir);
	} else {
		sMovementChar(move_speed_this_frame, move_dir);
	}
}

/*if jumping {
	move_dir = point_direction(0,0,move_xinput,0);
	if move_xinput != 0 {
		sMovementChar(jump_speed_this_frame, move_dir);	
	} else {
		sMovementChar(jump_speed_this_frame/16, point_direction(0,0,0,vspd));		
	}
}*/