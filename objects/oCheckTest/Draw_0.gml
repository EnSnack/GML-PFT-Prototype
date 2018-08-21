/// @description Insert description here
// You can write your code in this editor
dir = oMainChar.move_dir;
if(dir > 90 && dir < 270) {
	draw_sprite_ext(sprCheckTest,image_index,x,y+test,-1,1,0,c_aqua,0.5); 
}
else if(dir < 90 || dir > 270) {
	draw_sprite_ext(sprCheckTest,image_index,x,y+test,1,1,0,c_aqua,0.5); 
}