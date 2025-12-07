function scr_relic_apply(_name) {
    switch (_name) {
        case "Overclocked CPU":
            global.player_strength += 2;
            break;

        case "Corrupted RAM Stick":
            global.player_mp += 10;
            break;

        case "Quantum Cooling Fan":
            global.player_block += 5;
            break;

        case "Fragmented Hard Drive":
            global.player_max_hp += 10;
            global.player_hp += 10;
            break;

        case "Firewall Chipset":
            // This will give permanent vulnerable effect to enemies
            global.enemy_vulnerable = true;
            break;

        case "Debugger’s Toolkit":
            global.player_strength += 1;
            global.player_block += 3;
            break;

        case "Burnt-out Power Supply":
            global.player_hp += 5;
            break;

        case "GPU Accelerator":
            global.player_strength += 3;
            break;

        case "Memory Leak Capacitor":
            global.player_mp += 15;
            break;

        case "Glitched BIOS Battery":
            global.player_block += 8;
            break;

        case "Fiber-Optic Spool":
            global.player_mp += 5;
            global.player_strength += 1;
            break;

        case "Quantum Bit Drive":
            global.player_strength += 2;
            global.player_block += 2;
            global.player_hp += 5;
            break;

        default:
            show_debug_message("Relic effect not defined: " + _name);
            break;
    }
}
