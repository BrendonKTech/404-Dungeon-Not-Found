function scr_get_shop_sprite(_obj){
	switch (_obj) {
        case obj_card1: return spr_card1;
        case obj_card2: return spr_card2;
		case obj_card3: return spr_card3;
		case obj_card4: return spr_card4;
		case obj_card5: return spr_card5;
		case obj_card6: return spr_card6;
		case obj_card7: return spr_card7;
		case obj_card8: return spr_card8;
		case obj_card9: return spr_card9;
		case obj_card10: return spr_card10;
		case obj_card11: return spr_card11;
		case obj_card12: return spr_card12;
		case obj_card13: return spr_card13;
		case obj_card14: return spr_card14;
		case obj_card15: return spr_card15;
        case obj_potion_health: return spr_smhp;
        case obj_potion_energy: return spr_smmp;
		case obj_overclockedCPU: return spr_relic1;
		case obj_corruptedRamstick: return spr_relic2;
		case obj_fragmentedHardDrive: return spr_relic3;
		case obj_quantumcoolingfan: return spr_relic4;
		case obj_firewallChipset: return spr_relic5;
		case obj_debuggersToolkit: return spr_relic6;
		case obj_burntpowersupply: return spr_relic7;
		case obj_gpuAccelerator: return spr_relic8;
		case obj_memoryLeakCapacitor: return spr_relic9;
		case obj_glitchedBIOSbattery: return spr_relic10;
		case obj_fiberOpticSpool: return spr_relic11;
		case obj_quantumBitDrive: return spr_relic12;
		
    }
    return -1;
}