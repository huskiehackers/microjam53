alien_health = 20;
alien_speed = 1.5;

image_yscale = 4;
image_xscale = 4;

image_alpha = .1;

alarm[0] = 30;

enum alien_state_crawl {
	walking,
	attack,
	hit,
	dying
}

curr_state = alien_state_crawl.walking;

// Animation Timings

walk_start = 0;
walk_end = 6;

attack_start = 7;
attack_end = 16;
attack_impact = 11;

hit_start = 16;
hit_end = 21;

dying_start = 21;
dying_end = 27;