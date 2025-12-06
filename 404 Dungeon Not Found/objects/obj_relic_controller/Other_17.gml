// Burnt Power Supply — Apply 1 weak at combat start
if (array_contains(global.relics, obj_burntpowersupply)) {
    obj_player.weak += 1;
}

// Glitched BIOS Battery — If HP <= 30%, gain 2 temp MP once
if (array_contains(global.relics, obj_glitchedBIOSbattery) &&
    !global.used_glitched_bios)
{
    if (obj_player.hp <= obj_player.max_hp * 0.3) {
        global.used_glitched_bios = true;
        global.temp_mp += 2;
    }
}
