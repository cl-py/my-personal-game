x = room_height/2;
y = room_height/2;

hp = 10;

i_frames = 0;

flash = 0;

weapon_list = ds_list_create()

rot_ang = 0;
rot_spd = -1.5;

ds_list_add(weapon_list, instance_create_depth(x,y,layer_get_depth("Instances")-50, oHomeGun));
ds_list_add(weapon_list, instance_create_depth(x,y,layer_get_depth("Instances")-50, oHomeSniper));

weapon_list_size = ds_list_size(weapon_list);

for (var i = 0; i < weapon_list_size; i++)
{
	var weapon_id = ds_list_find_value(weapon_list,i)
	
	weapon_id.parent = id;
}
		
