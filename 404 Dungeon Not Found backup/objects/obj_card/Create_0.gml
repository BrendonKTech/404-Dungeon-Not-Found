card_cost = 1;
card_type = "attack";  // "attack", "skill", "power"
card_target = "enemy";  // "enemy", "self", "all"
damage = 0;
block = 0;
effects = [];  // Holds a list of effects to apply

effects = [
    { type: "damage", value: 10, target: "enemy" },
    { type: "vulnerable", value: 2, target: "enemy" }
];


