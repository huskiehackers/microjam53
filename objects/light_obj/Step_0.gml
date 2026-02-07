



if (lights_flickering)
{
	
	//call user event 0 to make the lights flicker
	if !(event0_called)
	{
		event_user(0);
		alarm[1] = counter_base;
	}
	
	//decrement counter if its not already 0
	if (counter >= 1)
	counter--;
	
	//lights off
	
	//set an alarm to turn the lights off
	//if (alarm[3] <= 0)
	//{
	//	alarm[3] = 10;
		
	//}
	
	
	
	
	//lights on
	
	
}





