event_inherited()

//enemy_name = ""; // Change per enemy
enemy_type = "boss"; // "normal" or "elite" or "boss"
is_elite = true;

max_hp = 215;
hp = max_hp;
shield = 10

image_xscale = 3;
image_yscale = 3;

// Status effects
status_weak = 0;        // Weak: take 50% more damage
status_vulnerable = 0;  // Vulnerable: take more damage
status_shield = 0;      // Blocks damage for this turn

// Animations
spr_idle   = spr_enemy4_idle;
spr_hit    = spr_enemy4_hurt;
spr_attack = spr_enemy4_attack;
spr_die    = spr_enemy4_die;

// Sound (commented out, fill later)
// sound_attack = snd_enemy1_attack;
sound_hit    = snd_robot_hit;
sound_die    = snd_robot_die;

turn_cooldown = 0;