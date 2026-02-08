SPAWN_TIME_LOW = 60 * 3;
SPAWN_TIME_HIGH = 60 * 5;

CRAWL_SPAWN_TIME_LOW = 60 * 9;
CRAWL_SPAWN_TIME_HIGH = 60 * 12;

random_set_seed(32232339);

//set alarm to begin alien creation process.
alarm[0] = irandom_range(SPAWN_TIME_LOW, SPAWN_TIME_HIGH);

//set alarm to spawn crawling aliens
alarm[1] = irandom_range(CRAWL_SPAWN_TIME_LOW, CRAWL_SPAWN_TIME_HIGH);