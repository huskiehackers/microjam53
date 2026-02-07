

//global variable
global.lights_on = true;


//variables
lights_flickering = false;
counter_base = 1000;
counter = counter_base;
event0_called = false;

min_rand = 10;
max_rand = 10

//randomize the seed
randomize();


alarm[0] = irandom_range(min_rand, max_rand);

