// F1 - Give yourself every relic for testing
if (keyboard_check_pressed(vk_f1)) {
	
scr_relic_add("Overclocked CPU");
scr_relic_add("Corrupted RAM Stick");
scr_relic_add("Quantum Cooling Fan");
scr_relic_add("Fragmented Hard Drive");
scr_relic_add("Firewall Chipset");
scr_relic_add("Debugger’s Toolkit");
scr_relic_add("Burnt-out Power Supply");
scr_relic_add("GPU Accelerator");
scr_relic_add("Memory Leak Capacitor");
scr_relic_add("Glitched BIOS Battery");
scr_relic_add("Fiber-Optic Spool");
scr_relic_add("Quantum Bit Drive");
show_debug_message("All relics added for testing.");
}


// F2 – Heal player to full
if (keyboard_check_pressed(vk_f2)) {
    obj_player.hp = obj_player.max_hp;
}

// F3 – Add +50 HP
if (keyboard_check_pressed(vk_f3)) {
    obj_player.hp += 50;
}

// F4 – Double current HP
if (keyboard_check_pressed(vk_f4)) {
    obj_player.hp *= 2;
}

// F5 – Set HP to 1 (hard-mode cheat)
if (keyboard_check_pressed(vk_f5)) {
    obj_player.hp = 1;
}