var dmg = damage_temp;

// Firewall Chipset — First unblocked hit gives 10 Block
if (array_contains(global.relics, obj_firewallChipset)) {
    if (!global.first_unblocked_taken && dmg > obj_player.block) {
        obj_player.block += 10;
        global.first_unblocked_taken = true;
    }
}
