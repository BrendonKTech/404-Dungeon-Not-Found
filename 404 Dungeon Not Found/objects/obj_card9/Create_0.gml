/*Cost: 0 Description: Next turn gain +1 energy, 
but become 2 Vulnerable.*/

event_inherited()

card_cost = 0;
card_type = "skill";
card_target = "self";
mp_next_turn = 1;
apply_vulnerable = 2; // on self
