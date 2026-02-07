

//Input variables for moving reticle
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
down = keyboard_check(ord("S"));
up = keyboard_check(ord("W"));



//reset velocity to 0 every tick so it can be set again
y_vel = 0;
x_vel = 0;


//logic for controlling the reticle

if (left && !right)
{

	//the player is moving stricly left	
	if !( down || up)
	{
		x_vel -= SPEED;
	}
	
	//the player is moving diagonal
	else if (down || up)
	{
		//x -= SPEED / 2;
	}
	
}



if (right && !left)
{
	//the player is moving stricly right
	if !(down || up)
	{
		x_vel += SPEED;
	}
	
	//the player is moving diagonal
	else if (down || up)
	{
		//x += SPEED / 2;
	}
	
	
}



if (down && !up)
{
	//the player is moving strictly down
	if !(left || right)
	{
		y_vel += SPEED;
	}
	
	//the player is moving diagonal
	else if (left || right)
	{
		//y += SPEED / 2;	
	}
}


if (up && !down)
{
	//the player is moving strictly up
	if !(left || right)
	{
		y_vel -= SPEED;	
	}
	
	if (left || right)
	{
		//y -= SPEED / 2;	
	}
}



//diagonal movement


if (left && up)
{
	x_vel -= sqrt((SPEED * SPEED) / 2  );
	y_vel -= sqrt((SPEED * SPEED) / 2  );
}


if (right && up)
{
	x_vel += sqrt((SPEED * SPEED) / 2  );
	y_vel -= sqrt((SPEED * SPEED) / 2  );
}



if (left && down)
{
	x_vel -= sqrt((SPEED * SPEED) / 2  );
	y_vel += sqrt((SPEED * SPEED) / 2  );
}

if (right && down)
{
	x_vel += sqrt((SPEED * SPEED) / 2  );
	y_vel += sqrt((SPEED * SPEED) / 2  );
}


//if the reticle isnt running into a wall, move horizontal
if (!place_meeting(x + x_vel, y, reticle_barrier_obj))
x += x_vel;

//if the reticle isnt running into a wall, move vertical
if (!place_meeting(x, y + y_vel, reticle_barrier_obj))
y += y_vel;

// shooting
spacebar = keyboard_check_pressed(obj("spacebar"))





