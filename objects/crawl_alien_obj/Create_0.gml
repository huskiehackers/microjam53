alien_health = 20;
alien_speed = .9;

image_alpha = .1;

alarm[0] = 30;

enum alien_state_crawl {
	walking,
	attack,
	hit,
	dying
}

curr_state = alien_state.walking;

// Animation Timings

walk_start = 1;
walk_end = 8;

attack_start = 9;
attack_end = 17;
attack_impact = 13;

hit_start = 18;
hit_end = 24;

dying_start = 25;
dying_end = 30;