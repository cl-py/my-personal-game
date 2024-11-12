draw_self()
if flash > 0
{
	shader_set(shWhite);
	draw_self()
	shader_reset();
}

flash = approach(flash, 0, 1)


draw_circle(x,y,shield_radius,!(shield.flash>0));