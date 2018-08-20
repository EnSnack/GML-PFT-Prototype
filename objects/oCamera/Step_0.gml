/// @description Insert description here
// You can write your code in this editor
dir = oMainChar.move_dir;
y = oMainChar.y*1.125;
if(dir > 90 && dir < 270) {
	x = oMainChar.x - 80;
}
else if(dir < 90 || dir > 270) {
	x = oMainChar.x + 100;
}