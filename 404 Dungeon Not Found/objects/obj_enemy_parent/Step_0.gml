//------------------------------------------
// ENEMY TURN
//------------------------------------------
if (global.turn == "enemy")
{
    if (is_alive)
    {
        turn_counter += 1;

        // -----------------------------
        // BASIC ATTACK TURN
        // -----------------------------
        if (turn_counter mod 2 == 1)
        {
            var dmg = damage;

            // Enemy's Weak reduces THEIR outgoing damage
            if (weak > 0) dmg *= 0.75;

            // Player Vulnerable increases incoming damage
            if (global.player_vulnerable > 0) dmg *= 1.5;

            // Apply Block
            var dmg_after_block = max(dmg - obj_player.block, 0);

            // Deal final damage
            global.player_hp -= dmg_after_block;

            // Damage popup
            var dmg_text = instance_create_layer(global.player.x, global.player.y - 150, "Instances", obj_damage_number);
            dmg_text.text = string(dmg_after_block);
            dmg_text.color = c_red;
            dmg_text.vy = -1;
            dmg_text.life_time = 60;
        }
        // -----------------------------
        // STATUS EFFECT TURN
        // -----------------------------
        else
        {
            global.player_weak += 1;
            global.player_vulnerable += 1;
        }

        // Elite shield resets each turn
        if (block > 0)
            block = 0;
    }
}

//------------------------------------------
// DEATH LOGIC
//------------------------------------------
if (hp <= 0 && is_alive)
{
    hp = 0;
    is_alive = false;
	var random_gold = irandom_range(50, 65);
	global.gold += random_gold;

if (is_boss)
{
	with (obj_battle_manager)
        alarm[9] = 60;
}
    with (obj_battle_manager)
        alarm[0] = 60;
}

if (!is_alive)
{
    image_alpha -= fade_speed;
    if (image_alpha <= 0)
        instance_destroy();
}

//------------------------------------------
// HIT REACTION
//------------------------------------------
if (global.enemy_hit == true)
{
    global.enemy_hit = false;

    sprite_index = damage_sprite;
    image_index = 0;
    image_speed = 0.85;
}
