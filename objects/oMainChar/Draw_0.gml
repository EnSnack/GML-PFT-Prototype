/// @description Insert description here
// You can write your code in this editor
if moving && !jumping {
	if !crawl {
		image_speed = 0.5;
		draw_sprite_ext(sprMainCharRun, image_index, x, y, image_xscale, image_yscale,0,c_white,1);
	} else {
		image_speed = 0.15;
		draw_sprite_ext(sprMainCharCrawl, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
	}
	moving = 0;
} else {
	image_speed = 0;
	if !crawl {
		draw_sprite_ext(sprMainCharIdle, 0, x, y, image_xscale, image_yscale,0,c_white,1);
	} else {
		draw_sprite_ext(sprMainCharCrawl, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
	}
}