if (array_contains(global.relics, obj_burntpowersupply)) {
    obj_player.max_hp += 10;
    obj_player.hp += 10; // heal to match
}

// Player starts combat Weak
if (array_contains(global.relics, obj_corruptedRamstick)) {
    obj_player.weak += 1;
}

// Strength relic (+1 dmg on attacks)
if (array_contains(global.relics, obj_debuggersToolkit)) {
    global.strength = 1;
}

// Auto-apply Weak on attack
if (array_contains(global.relics, obj_fiberOpticSpool)) {
    global.apply_weak_on_attack = true;
}

// Auto-apply Vulnerable on attack
if (array_contains(global.relics, obj_glitchedBIOSbattery)) {
    global.apply_vulnerable_on_attack = true;
}
