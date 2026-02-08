alien_health = 20;
alien_speed = .9;

image_alpha = .1;

alarm[0] = 30;

enum alien_state {
	walking,
	attack,
	hit,
	dying
}

curr_state = alien_state.walking;