image_angle = shoot_dir;

if instance_exists(parent)
{
	angle_to_parent = point_direction(parent.x,parent.y,x,y);
}

shoot_dir = clamp(shoot_dir, angle_to_parent-aim_limit, angle_to_parent+aim_limit);

if instance_exists(target)
{
	aim_dir = point_direction(x,y, target.x, target.y);
	
	shoot_dir = angle_lerp(shoot_dir, aim_dir, 0.05)
	shoot_dir = clamp(shoot_dir, angle_to_parent-aim_limit, angle_to_parent+aim_limit)
	
	if shoot_del <= 0 and abs(angle_difference(aim_dir, shoot_dir)) < 30
	{
		shoot_del = shoot_del_max
		
		bullet_count += 1;
	
		with instance_create_layer(x+lengthdir_x(sprite_width, shoot_dir), y+lengthdir_y(sprite_width, shoot_dir), "Instances", oBullet){
			spd = 15;
			dmg = 1;
			dir = other.shoot_dir+random_range(-other.accuracy,other.accuracy)
		}
		
	if bullet_count >= salvo
	{
		bullet_count = 0;
		shoot_del = shoot_del_max*15;
	}
	
	}
	
}
		

else
{
	target = noone;
}

if target = noone
{
	
	ds_list_clear(targ_list);

	collision_circle_list(x, y, 300,opEnemy,true, true,targ_list, true);

	if ds_list_size(targ_list) > 0
	{
		target = ds_list_find_value(targ_list, 0);
	}
}

shoot_del = approach(shoot_del, 0, 1)
