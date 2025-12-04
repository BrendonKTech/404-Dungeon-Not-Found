function scr_damage(_t, _amt) {

    var amt = _amt;

    // Apply target vulnerable
    amt *= (1 + (_t.vulnerable * 0.5));

    // Apply player strength
    amt += obj_player.strength;

    _t.hp -= amt;

    // spawn damage popup if you like
}
