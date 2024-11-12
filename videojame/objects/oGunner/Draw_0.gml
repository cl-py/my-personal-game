vis_dir = point_direction(0, 0, x_calc, y_calc)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, vis_dir, c_white, image_alpha)

if flash > 0
{
	shader_set(shWhite);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, vis_dir, c_white, image_alpha)
	shader_reset();
}

flash = approach(flash, 0, 1);