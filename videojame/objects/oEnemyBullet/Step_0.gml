x += lengthdir_x(spd,dir)
y += lengthdir_y(spd,dir)

image_angle = dir

if hp <= 0{
	instance_create_depth(x, y, depth, oHit);
	instance_destroy();
}