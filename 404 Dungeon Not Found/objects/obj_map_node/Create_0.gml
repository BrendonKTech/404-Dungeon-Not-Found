// Node states: 0 = locked, 1 = unlocked, 2 = cleared
node_state = 0;


// Reference to the next node in sequence (optional)
next_node_index = node_index + 1;


// Initially set sprite based on state
sprite_index = spr_node_locked;

if node_index == 0
{
	sprite_index = spr_node_unlocked;
}

if type == "random"
{
	type = get_random_room_type()
	if (type = "treasure")
	{
		room_to_go = rm_treasure
	}
	if (type = "merchant")
	{
		room_to_go = rm_shop2
	}
}
