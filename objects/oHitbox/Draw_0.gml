/// @description Insert description here
// You can write your code in this editor
mask_index = oMainChar.mask_index;
dir = oMainChar.move_dir;
if(dir > 90 && dir < 270) {
	draw_sprite_ext(mask_index,image_index,x+1,y,-1,1,0,c_aqua,0.5); 
}
else if(dir < 90 || dir > 270) {
	draw_sprite_ext(mask_index,image_index,x+1,y,1,1,0,c_aqua,0.5); 
}