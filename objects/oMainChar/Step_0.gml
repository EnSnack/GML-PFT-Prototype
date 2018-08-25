/// @description Insert description here
// You can write your code in this editor
falling = ( point_distance(0,0,0,vspeed) > 0 );
var gravitySpeed = 5*(delta_time/1000000);

y += vspeed;
if place_meeting(x,y+7,oWall) {falling = false;vspeed = 0;}
if place_meeting(x,y,oSlope) {falling = false;vspeed = 0;}
show_debug_message(falling);
show_debug_message(vspeed);

if falling {
	sMovementChar(vspeed, 270);
	vspeed += lengthdir_y(gravitySpeed,270);
}