/// @description Insert description here
// You can write your code in this editor
var gravitySpeed = 5*(delta_time/1000000);
if !position_meeting(x,y+18,oGround) {
	falling = true;
	vspd += lengthdir_y(gravitySpeed,270);
} else {
	falling = false;
	vspd = 0;
}

if falling {
	y += vspd;	
}