if (global.turn == "player" && obj_player.mp >= card_cost) {
    var target = noone;
    
    // Targeting logic
    if (card_target == "enemy") {
        if (array_length(obj_battle_manager.enemies) > 0) {
            target = instance_nearest(mouse_x, mouse_y, obj_enemy_parent);
        }
    }
    
    // If target exists, apply effects
    if (instance_exists(target)) {
        // Apply all card effects
        for (var i = 0; i < array_length(effects); i++) {
            var effect = effects[i];
            apply_effect(effect, target);
        }
        
        // Discard the card after use
        discard_card(self);
    }
}
else if (global.turn == "player") {
    // Not enough MP warning
    if (instance_exists(obj_battle_manager)) {
        obj_battle_manager.not_enough_mp_text = "Not enough Energy!";
        obj_battle_manager.not_enough_mp_timer = 45;
    }
}

function apply_effect(effect, target) {
    switch (effect.type) {
        case "damage":
            target.hp -= effect.value;  // Apply damage to the target
            break;
        case "block":
            obj_player.block += effect.value;  // Apply block to the player
            break;
        // You can add more cases for other types of effects (e.g., vulnerable, weak)
    }
}

function discard_card(card) {
    // Find the deck controller to add the card to the discard pile
    var deck = instance_find(obj_deck_controller, 0);
    if (deck != noone) {
        // Add the card to the discard pile
        array_push(deck.discard_pile, card);
    }
    
    // Destroy the card instance after it's discarded
    card.instance_destroy();
}

