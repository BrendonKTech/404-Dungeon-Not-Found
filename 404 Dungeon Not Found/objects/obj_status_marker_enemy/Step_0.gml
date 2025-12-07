if instance_exists(obj_enemy_parent)
{

	if obj_enemy_parent.vulnerable == true && type == "vulnerable"
	{
		sprite_index = spr_status_vulnerable_on
	}
	else if obj_enemy_parent.strength && type == "strength"
	{
		sprite_index = spr_status_strength_on
	}
	else if obj_enemy_parent.block > 0 && type == "block"
	{
		sprite_index = spr_status_block_on
	}
	else
	{
		sprite_index = spr_status_off
	}
}