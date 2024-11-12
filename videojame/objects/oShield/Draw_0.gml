draw_sprite_ext(sprite_index, image_index, x, y, scale,scale,image_angle,c_white,image_alpha);

if active = true
{
	scale = lerp(scale, 1, 0.1)
}

if active = false
{
	scale = lerp(scale, 0, 0.2)
}



if flash > 0
{
	draw_circle(x,y,64*scale,false);
}

flash = approach(flash, 0, 1);