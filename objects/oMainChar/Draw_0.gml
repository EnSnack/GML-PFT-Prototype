/// @description Insert description here
// You can write your code in this editor
if jumping && !crawl {
	if(!falling) {
		image_speed = 1.5;
		draw_sprite_ext(sprMainCharJump, image_index, x, y, image_xscale, image_yscale,0,c_white,1);
		mask_index = sprMainCharJump;
	} else {
		image_speed = 0;
		draw_sprite_ext(sprMainCharJump, 0, x, y, image_xscale, image_yscale,0,c_white,1);
		mask_index = sprMainCharJump;
	}
}
if moving && !jumping {
	if !crawl {
		image_speed = 1.5;
		draw_sprite_ext(sprMainCharRun, image_index, x, y, image_xscale, image_yscale,0,c_white,1);
		mask_index = sprMainCharRun;
	} else {
		image_speed = 1;
		draw_sprite_ext(sprMainCharCrawl, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
		mask_index = sprMainCharCrawl;
	}
	moving = 0;
} else if !moving && !jumping {
	image_speed = 0;
	if !crawl {
		draw_sprite_ext(sprMainCharIdle, 0, x, y, image_xscale, image_yscale,0,c_white,1);
		mask_index = sprMainCharIdle;
	} else {
		draw_sprite_ext(sprMainCharCrawl, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
		mask_index = sprMainCharCrawl;
	}
}