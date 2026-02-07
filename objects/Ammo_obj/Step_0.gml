if keyboard_check(obj("spacebar")) and pistolammo>=1 and pistolfirerate=0.15
{
	pistolammo -=1	
	pistolfirerate-=0.2
}
if pistolfirerate>0.15
{
pistolfirerate+=delta_time
}

if keyboard_check(ord("r")) and pistolammo=0
{
	
pistolammo=9
}
else if (keyboard_check(ord("r")) and pistolammo<0 and pistolfirerate=0.15) 
pistolammo=10