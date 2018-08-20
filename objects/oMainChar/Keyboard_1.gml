/// @description Insert description here
// You can write your code in this editor
var seconds_passed = delta_time/1000000;
var move_speed_this_frame = move_speed*seconds_passed;
var jump_speed_this_frame = jump_speed*seconds_passed;

var move_xinput = 0;
var move_yinput = 0;
 
for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    var this_key = movement_inputs[i];
    if keyboard_check(this_key) {
		var this_angle = i*90;
		if(keyboard_check_pressed(ord("S")) && !jumping && !falling) {
			crawl = !crawl;
			break;
		}
		if(this_key == ord("A") || this_key == ord("D")) {
	        move_xinput += lengthdir_x(1, this_angle);
		}
		if(this_key == ord("W") && !jumping && !falling) {
			if(!crawl) {
				vspd = -jump_speed_this_frame;
				y += vspd;
			} else {
				vspd = -jump_speed_this_frame/1.5;
				y += vspd;
			}
		}
    }
}
 
moving = ( point_distance(0,0,move_xinput,0) > 0 );
jumping = ( point_distance(0,0,0,vspd) > 0 );
if moving && !jumping {
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

if jumping {
	move_dir = point_direction(0,0,move_xinput,move_yinput);
	if(move_dir > 90 && move_dir < 270) {
		image_xscale = -1;
	}
	else if(move_dir < 90 || move_dir > 270) {
		image_xscale = 1;	
	}
    sMovementChar(jump_speed_this_frame, move_dir);	
}