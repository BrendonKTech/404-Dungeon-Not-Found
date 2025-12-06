function scr_deck_build_starting_deck() {
    // Add card types to draw_pile (ds_list_add)
    repeat(5) ds_list_add(draw_pile, obj_card1);
    repeat(5) ds_list_add(draw_pile, obj_card2);
    repeat(5) ds_list_add(draw_pile, obj_card3);

    // Shuffle now works
    ds_list_shuffle(draw_pile);
}
