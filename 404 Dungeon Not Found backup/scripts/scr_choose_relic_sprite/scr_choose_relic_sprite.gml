function scr_choose_relic_sprite(_name){
	switch(_name) {

        case "Overclocked CPU": return spr_relic1;
        case "Corrupted RAM Stick": return spr_relic2;
        case "Quantum Cooling Fan": return spr_relic3;
        case "Fragmented Hard Drive": return spr_relic4;
        case "Firewall Chipset": return spr_relic5;
        case "Debugger’s Toolkit": return spr_relic6;
        case "Burnt-out Power Supply": return spr_relic7;
        case "GPU Accelerator": return spr_relic8;
        case "Memory Leak Capacitor": return spr_relic9;
        case "Glitched BIOS Battery": return spr_relic10;
        case "Fiber-Optic Spool": return spr_relic11;
        case "Quantum Bit Drive": return spr_relic12;

        default: return spr_relic_placeholder;
    }
}