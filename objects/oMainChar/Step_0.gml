/// @description Insert description here
// You can write your code in this editor
falling = ( point_distance(0,0,0,vspd) > 0 );
var gravitySpeed = 5*(delta_time/1000000);
/*if position_meeting(x,y+20,oSlope) {
	falling = false;
	vspd = 0;
} else if !position_meeting(x,y+18,oWall) {
	falling = true;
	vspd += lengthdir_y(gravitySpeed,270);
} else {
	falling = false;
	vspd = 0;
*/
vspd += lengthdir_y(gravitySpeed,270);
if place_meeting(x,y+1,oWall) {falling = false;vspd = 0;}
if place_meeting(x,y+2,oSlope) {falling = false;vspd = 0;}

if falling {
	sMovementChar(vspd, 270);
}