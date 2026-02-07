if keyboard_check_pressed(ord("spacebar")) and pistolammo>=1 and pistolfirerate=0.15
{
	pistolammo -=1	
	pistolfirerate-=0.15

}
if pistolfirerate>0.15
{
pistolfirerate+=delta_time
}

// reload
if keyboard_check(ord("r")) and pistolammo=0
{
	
pistolammo=9
}
else if (keyboard_check(ord("r")) and pistolammo>=1 and pistolfirerate=0.15) 
pistolammo=10