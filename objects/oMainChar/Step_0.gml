/// @description Insert description here
// You can write your code in this editor
y += vspeed;
falling = ( point_distance(0,0,0,vspeed) > 0 );
var gravitySpeed = 5*(delta_time/1000000);

if place_meeting(x,y+4,oWall) {falling = false;vspeed = 0;}
if place_meeting(x,y,oSlope) {falling = false;vspeed = 0;}

if falling {
	sMovementChar(vspeed, 270);
	vspeed += lengthdir_y(gravitySpeed,270);
}

show_debug_message(point_distance(0,0,0,vspeed));
show_debug_message(vspeed);
show_debug_message(gravitySpeed);
show_debug_message(falling);

if(keyboard_check_pressed(ord("W"))) {
	vspeed = -jump_speed_this_frame;
} else if(keyboard_check_released(ord("W")) && vspeed <= 0) {
	vspeed = (-jump_speed_this_frame)*0.5;
}