// F1 - Give yourself every relic for testing

	
//scr_relic_add("Overclocked CPU");
//scr_relic_add("Corrupted RAM Stick");
//scr_relic_add("Quantum Cooling Fan");
//scr_relic_add("Fragmented Hard Drive");
//scr_relic_add("Firewall Chipset");
//scr_relic_add("Debugger’s Toolkit");
//scr_relic_add("Burnt-out Power Supply");
//scr_relic_add("GPU Accelerator");
//scr_relic_add("Memory Leak Capacitor");
//scr_relic_add("Glitched BIOS Battery");
//scr_relic_add("Fiber-Optic Spool");
//scr_relic_add("Quantum Bit Drive");
//show_debug_message("All relics added for testing.");

var target = instance_nearest(mouse_x, mouse_y, obj_enemy_parent);
if (instance_exists(target))
{
	target.hp -= 500
}
