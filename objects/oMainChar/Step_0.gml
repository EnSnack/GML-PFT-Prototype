/// @description Insert description here
// You can write your code in this editor
var gravitySpeed = 5*(delta_time/1000000);
speed_y += gravitySpeed; //Apply gravity
keyJump = keyboard_check(movement_inputs[1]);

//check pressed først
//derefter check released && vspeed <= 0
if(keyJump && place_meeting(x, y + 1, oWall) || keyJump && place_meeting(x,y+6,oSlope))
{
	if(!crawl) {
		speed_y = -jump_speed_this_frame;
	} else {
		speed_y = -jump_speed_this_frame*0.75;	
	}
}
if(!place_meeting(x,y+2,oWall) && !place_meeting(x,y+6,oSlope)) {
	falling = true;	
}
//Vertical collision
if(place_meeting(x, y + speed_y, oWall))
{
	falling = false;
    speed_y = 0;
}
if(place_meeting(x, y + speed_y, oSlope))
{
	falling = false;
	speed_y = 0;	
}
y += speed_y;