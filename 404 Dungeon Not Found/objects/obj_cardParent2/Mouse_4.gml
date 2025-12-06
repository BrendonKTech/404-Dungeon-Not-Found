
//-------
if (global.turn == "player" && obj_player.mp >= card_cost) {




    // Normal card attack logic
    var target = instance_nearest(mouse_x, mouse_y, obj_enemy_parent);
    if (instance_exists(target)) {
        target.hp -= card_damage;
        obj_player.mp -= card_cost;

        var dmg_text = instance_create_layer(target.x, target.y - 50, "Instances", obj_damage_number);
        dmg_text.text = string(card_damage);
        dmg_text.color = c_red;
        dmg_text.vy = -1;
        dmg_text.life_time = 60;
		instance_destroy()
    }
}
