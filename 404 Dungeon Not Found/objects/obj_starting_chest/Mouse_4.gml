sprite_index = spr_chestopen
var start_card1 = treasure_get_card()
var start_card2 = treasure_get_card()
var start_card3 = treasure_get_card()

instance_create_layer(400, room_height / 2, "Instances", obj_card1);
instance_create_layer(800, room_height / 2, "Instances", start_card1);
instance_create_layer(1200, room_height / 2, "Instances", start_card2);
instance_create_layer(1600, room_height / 2, "Instances", start_card3);

alarm[0] = 240