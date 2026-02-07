if spacebar and pistolammo>=1 and pistolfirerate=0.2
{
	pistolammo -=1	
	pistolfirerate-=0.2
}
if pistolfirerate=0
{
pistolfirerate+=delta_time
}