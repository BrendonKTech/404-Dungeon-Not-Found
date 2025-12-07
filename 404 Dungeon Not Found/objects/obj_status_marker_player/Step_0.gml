if instance_exists(obj_player)
{
	if obj_player.vulnerable == true && type == "vulnerable"
	{
		sprite_index = spr_status_vulnerable_on
	}
	else if obj_player.strength && type == "strength"
	{
		sprite_index = spr_status_strength_on
	}
	else if obj_player.block > 0 && type == "block"
	{
		sprite_index = spr_status_block_on
	}
	else
	{
		sprite_index = spr_status_off
	}
}