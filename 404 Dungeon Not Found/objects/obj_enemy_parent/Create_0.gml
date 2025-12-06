// Basic Stats
hp       = 100;      // change per enemy
max_hp   = hp;
damage   = 10;       // default attack damage
shield   = 0;        // temporary shield for elites
is_elite = false;    // elites can have shield or stronger attacks

// Status effects
weak      = 0;       // number of turns weak is active
vulnerable= 0;       // number of turns vulnerable is active

// Animation placeholders
/*sprite_idle   = spr_enemy1_idle;  // replace per enemy
sprite_attack = spr_enemy1_attack; // optional
sprite_hit    = spr_enemy1_hit;
sprite_die    = spr_enemy1_die;
*/
// Attack turn setup
turn_counter = 0; // can alternate attack types

// snd_attack = snd_enemy_attack; 
// snd_hit    = snd_enemy_hit;
