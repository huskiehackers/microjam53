SPAWN_TIME_LOW = 60 * 3;
SPAWN_TIME_HIGH = 60 * 5;

random_set_seed(32232339);

//set alarm to begin alien creation process.
alarm[0] = irandom_range(SPAWN_TIME_LOW, SPAWN_TIME_HIGH);

