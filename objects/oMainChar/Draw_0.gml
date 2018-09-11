/// @description Insert description here
// You can write your code in this editor
if !crawl {
	if falling {
		if !crawl && !gp {
			image_speed = 0;
			draw_sprite_ext(sprMainCharJump, 2, x, y, image_xscale, image_yscale,0,c_white,1);
			mask_index = sprMainCharJump;
		} if !crawl && gp {
			image_speed = 0.25;
			draw_sprite_ext(sprMainCharGP, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
			mask_index = sprMainCharGP;
		}
	}
	if moving && !falling {
		image_speed = 1.25;
		draw_sprite_ext(sprMainCharRun, image_index, x, y, image_xscale, image_yscale,0,c_white,1);
		mask_index = sprMainCharRun;
		moving = 0;
	} else if !moving && !falling {
		image_speed = 0;
		draw_sprite_ext(sprMainCharIdle, 0, x, y, image_xscale, image_yscale,0,c_white,1);
		mask_index = sprMainCharIdle;
	}
} else {
	if moving {
		image_speed = 1;
		draw_sprite_ext(sprMainCharCrawl, image_index, x, y, image_xscale, image_yscale,0,c_white,1);
		mask_index = sprMainCharCrawl;
		moving = 0;
	} else {
		image_speed = 0;
		draw_sprite_ext(sprMainCharCrawl, 0, x, y, image_xscale, image_yscale,0,c_white,1);
		mask_index = sprMainCharCrawl;	
	}
}