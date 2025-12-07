if (not_yet_clicked == true)
{
not_yet_clicked = false;
sprite_index = spr_chestopen
obj_starting_chest_popup.progress = true
obj_starting_chest_popup2.progress = true
var start_card1 = treasure_get_card()
var start_card2 = treasure_get_card()
var start_card3 = treasure_get_card()

instance_create_layer(400, room_height / 2, "Instances", obj_card1);
instance_create_layer(800, room_height / 2, "Instances", start_card1);
instance_create_layer(1200, room_height / 2, "Instances", start_card2);
instance_create_layer(1600, room_height / 2, "Instances", start_card3);
}
