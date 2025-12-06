event_inherited()

//enemy_name = ""; // Change per enemy
enemy_type = "normal"; // "normal" or "elite" or "boss"
is_elite = false;

max_hp = 64;
hp = max_hp;

// Status effects
status_weak = 0;        // Weak: take 50% more damage
status_vulnerable = 0;  // Vulnerable: take more damage
status_shield = 0;      // Blocks damage for this turn

// Animations
spr_idle   = spr_enemy6_idle;
spr_hit    = spr_enemy6_hit;
spr_attack = spr_enemy6_attack;
//spr_die    = spr_enemy3_die;

// Sound (commented out, fill later)
// sound_attack = snd_enemy1_attack;
sound_hit    = snd_robot_hit;
sound_die    = snd_robot_die;

turn_cooldown = 0;