// Player gold
if (!variable_global_exists("gold")) global.gold = 100;

// Shop lists
cards_for_sale   = [];
potions_for_sale = [];
relics_for_sale  = [];

// Prices
card_prices   = [];
potion_prices = [];
relic_prices  = [];

// Available items
var available_cards = [
    obj_card1,obj_card2,obj_card3,obj_card4,obj_card5,
    obj_card6,obj_card7,obj_card8,obj_card9,obj_card10,
    obj_card11,obj_card12,obj_card13,obj_card14,obj_card15
];

var available_potions = [obj_potion_health, obj_potion_energy];

var available_relics = [
    obj_overclockedCPU, obj_corruptedRamstick, obj_fragmentedHardDrive,
    obj_quantumcoolingfan, obj_firewallChipset, obj_debuggersToolkit,
    obj_burntpowersupply, obj_gpuAccelerator, obj_memoryLeakCapacitor,
    obj_glitchedBIOSbattery, obj_fiberOpticSpool, obj_quantumBitDrive
];

// Cards for sale (3)
for (var i = 0; i < 3; i++) {
    var idx = irandom(array_length(available_cards) - 1);
    var c = available_cards[idx];
    array_push(cards_for_sale, c);
    array_push(card_prices, irandom_range(50, 100));
    
    // Remove chosen card to avoid duplicates
    array_delete(available_cards, idx, 1);
}

// Potions for sale (2)
for (var i = 0; i < 2; i++) {
    var idx = irandom(array_length(available_potions) - 1);
    var p = available_potions[idx];
    array_push(potions_for_sale, p);
    array_push(potion_prices, irandom_range(25, 50));
    
    array_delete(available_potions, idx, 1);
}

// Relic for sale (1)
var idx = irandom(array_length(available_relics) - 1);
var r = available_relics[idx];
array_push(relics_for_sale, r);
array_push(relic_prices, irandom_range(100, 200));


// Layout positions
shop_start_x = 300;
shop_spacing_x = 250;

y_cards   = 200;
y_potions = 500;
y_relics  = 750;

// Leave button
leave_x = 1700;
leave_y = 1000;
leave_w = 150;
leave_h = 60;
