
global.shot_fired = false;
global.reload_event = false;

start_x = -64;
start_y = 352;

// States

enum gun_state {
	idle,
	shooting,
	reloading
}

curr_state = gun_state.idle;

// Animations
idle_frame = 0;

shooting_start = 1;
shooting_end = 8;

reloading_start = 9;
reloading_end = 29;
