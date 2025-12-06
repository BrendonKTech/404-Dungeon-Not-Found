// Update sprite based on state
switch(node_state) {
    case 0: sprite_index = spr_node_locked; break;
    case 1: sprite_index = spr_node_unlocked; break;
    case 2: sprite_index = spr_node_cleared; break;
	case 3: sprite_index = spr_node_unlocked_enemy; break;
	case 4: sprite_index = spr_node_unlocked_elite; break;
	case 5: sprite_index = spr_node_unlocked_merchant; break;
	case 6: sprite_index = spr_node_unlocked_treasure; break;
	case 7: sprite_index = spr_node_unlocked_boss; break;
}

if (global.unlock_index) == (node_index)
{
	image_xscale = 2
	image_yscale = 2
	if type == "enemy"
	{
		node_state = 3
	}
	else if type == "elite"
	{
		node_state = 4
	}
	else if type == "merchant"
	{
		node_state = 5
	}
	else if type == "treasure"
	{
		node_state = 6
	}
	else if type == "boss"
	{
		node_state = 7
	}
	else
	{
		node_state = 1
	}
}
else if (global.unlock_index) > (node_index)
{
	node_state = 2
}
else
{
	node_state = 0
}