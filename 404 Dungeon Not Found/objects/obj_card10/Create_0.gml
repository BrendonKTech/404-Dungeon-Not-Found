/*Cost: 1 Description: Deal 8 damage, increases by +5 
each time you play it this combat.*/

event_inherited()

card_cost = 1;
card_type = "attack";
card_target = "enemy";
damage = 8;
extra_value = 5; // amount added every time it is used
