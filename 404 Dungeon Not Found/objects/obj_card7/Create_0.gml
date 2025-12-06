/*Cost: 1 Description: Overclock your system for power, 
dealing 15 damage but take 3 self-damage.*/

event_inherited()

card_cost = 1;
card_type = "attack";
card_target = "enemy";
card_damage = 15;
self_damage = 3;
