function scr_get_shop_description(_obj){
	switch (_obj) {
        case obj_potion_health: return "Restores 10 HP";
        case obj_potion_energy: return "Gain 1 energy";
        case obj_card1: return "Send a small data packet that deals 6 damage to an enemy.";
        case obj_card2: return "Raise a temporary firewall, gaining 5 block.";
        case obj_overclockedCPU: return "At the start of each turn, gain 1 temporary Energy.";
        case obj_corruptedRamstick: return "Whenever you draw a Status or Curse, gain 1 Block.";
    }
    return "";
}