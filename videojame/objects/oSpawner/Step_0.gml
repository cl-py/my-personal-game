spawn_time = approach(spawn_time, 0, 1);

if spawn_time <= 0
{
	spawn_time = spawn_time_max;
	
	side = irandom_range(1,4)
	
	xx = irandom_range(0,room_width);
	
	enemy = choose(oChaser,oGunner)
	
	switch(side)
	{
		case 1:
			instance_create_depth(0,xx, depth, enemy);
			break;
		case 2:
			instance_create_depth(xx, 0, depth, enemy);
			break;
		case 3:
			instance_create_depth(room_width,xx, depth, enemy)
			break;
		case 4:
			instance_create_depth(xx, room_height, depth,enemy); 
			break;
	}
}