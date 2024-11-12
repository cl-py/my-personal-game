
if hp > 0{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, inputdir, c_white, image_alpha)

	if flash > 0
	{
		shader_set(shWhite);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, inputdir, c_white, image_alpha)
		shader_reset();
	}

	flash = approach(flash, 0, 1);
}