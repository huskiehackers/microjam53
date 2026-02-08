

//if the countdown is positive subtract
if (countdown > 0)
{
countdown -=1
}



//if countdown is 0, take damage
if (countdown == 0 )
{
	alarm[0] = 1;
	--countdown;	
}

if(countdown <= 0){
	global.healthbar -= oxygen_damage;	
}




if (global.healthbar==0)
{
	room_restart()	
}
if countdown <= 0
{ 
	
	oxygendamagetimer  += delta_time
}
if oxygendamagetimer == 5000000
{
	global.healthbar -=1
	oxygendamagetimer = 0
}


//scale the meter based on countdown
//image_yscale = (oxygen_meter_scaler * ( countdown / base_count_down ) );
image_yscale = ( base_y_scale * (countdown/ base_count_down))



