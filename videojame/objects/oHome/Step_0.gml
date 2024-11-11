weapon_list_size = ds_list_size(weapon_list);

rot_ang += rot_spd
if ds_list_size(weapon_list) > 0
{
	var offset_len = sprite_width / 2;
	
	for (var i = 0; i < weapon_list_size; i++)
	{
		
		var offset_ang = (360 / (i + 1)) + rot_ang
		var weapon_id = ds_list_find_value(weapon_list, i);
		
		var xx = x + lengthdir_x(offset_len, offset_ang);
		var yy = y + lengthdir_y(offset_len, offset_ang);
		weapon_id.x = xx;
		weapon_id.y = yy;
	}
}
