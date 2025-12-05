function scr_get_shop_name(_obj){
	switch (_obj) {
        case obj_potion_health: return "Health Potion";
        case obj_potion_energy: return "Energy Potion";
        case obj_card1: return "Ping";
        case obj_card2: return "Firewall";
        case obj_overclockedCPU: return "Overclocked CPU";
        case obj_corruptedRamstick: return "Corrupted RAM Stick";

    }
    return "Unknown";
}