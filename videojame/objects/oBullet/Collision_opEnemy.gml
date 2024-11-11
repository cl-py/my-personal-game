if ds_list_find_index(hit_list, other.id) != -1
{
	exit;
}

ds_list_add(hit_list, other.id)

other.hp -= dmg;
other.flash = 4;
hp -= 1;