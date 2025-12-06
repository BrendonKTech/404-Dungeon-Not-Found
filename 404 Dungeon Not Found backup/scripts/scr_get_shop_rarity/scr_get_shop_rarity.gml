function scr_get_shop_rarity(obj){
	switch (obj) {
    case obj_card1:
    case obj_card2:
    case obj_potion_health:
        return "common";
        
    case obj_card3:
    case obj_card4:
    case obj_potion_energy:
        return "uncommon";
        
    case obj_card5:
    case obj_overclockedCPU:
        return "rare";
        
    default:
        return "common";
	}
}