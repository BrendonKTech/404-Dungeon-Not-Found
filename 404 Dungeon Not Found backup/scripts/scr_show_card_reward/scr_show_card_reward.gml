function scr_show_card_reward() {
    var arr = argument0;
	var inst = instance_create_layer(0, 0, "GUI", obj_reward_controller);
	inst.reward_cards = arr;
	return inst;
}
