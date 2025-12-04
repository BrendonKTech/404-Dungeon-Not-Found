function scr_deck_position_hand(){
	var cx = room_width / 2;
    var base_y = room_height - 115;

    var count = array_length(hand);

    if (count == 0) return;

    var spacing = 90;
    var start_x = cx - ((count - 1) * spacing) / 2;

    for (var i = 0; i < count; i++) {
        var c = hand[i];
        c.x = start_x + (i * spacing);
        c.y = base_y;
    }
}