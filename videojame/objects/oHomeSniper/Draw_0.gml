draw_self()

if instance_exists(target){
	draw_circle(target.x, target.y, target.sprite_width/2, true);
	draw_line(x, y, target.x, target.y)
}
