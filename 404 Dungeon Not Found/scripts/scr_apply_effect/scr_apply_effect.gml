function scr_apply_effect(effect, target) {
    switch (effect.type) {
        case "damage":
            target.hp -= effect.value;
            break;
        case "block":
            obj_player.block += effect.value;
            break;
        case "vulnerable":
            scr_apply_vulnerable(target, effect.value);
            break;
        case "weak":
            scr_apply_weak(target, effect.value);
            break;
    }
}
