alien_health = 15;
alien_speed = 0.9;

image_yscale = 4;
image_xscale = 4;

image_alpha = .1;

alarm[0] = 30;

enum alien_state_fly {
	walking,
	attack,
	hit,
	dying
}

curr_state = alien_state_fly.walking;

// Animation Timings

walk_start = 0;
walk_end = 7;

attack_start = 8;
attack_end = 18;
attack_impact = 12;

hit_start = 19;
hit_end = 24;

dying_start = 25;
dying_end = 30;