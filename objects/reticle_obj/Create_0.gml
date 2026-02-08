

//constant for reticle move speed
SPEED = 15;

//y velocity and x velocity
y_vel = 0;
x_vel = 0;
// ammo firerate
// States
enum reticle_states {
	idle,
	aiming,
	aimed,
	fire,
	empty
}

curr_state = reticle_states.idle;

// Animation
idle_frame = 0;

aim_start = 1;
aim_end = 5;

fire_start = 6;
fire_end = 13;

empty_start = 14;
empty_end = 19;
global.pistolammo = 32
pistol_fire_rate=true
