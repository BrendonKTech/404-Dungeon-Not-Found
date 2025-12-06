/*Cost: 0 Description: Next turn gain +1 energy, 
but become 2 Vulnerable.*/

event_inherited()

card_cost = 0;
card_type = "skill";
card_target = "self";
gain_mp = 2;
vulnerable_amount = 2; // on self
