/// @description Monster Step

image_angle = direction;

if( y < 0 || y > room_height)
{
	vspeed = -vspeed;
}

if( x < 0 or x > room_width)
{
	hspeed = -hspeed;
}

// Damage
IncomingBullet = instance_place(x,y,oBullet);

if instance_exists(IncomingBullet)
{
		with IncomingBullet
	{
		instance_destroy();
	}
	
	image_xscale -= 0.2;
	image_yscale = image_xscale;
	
	if(image_xscale <= 0)
	{
		instance_create_layer(random(room_width), random(room_height), "Instances", oEnemy);
		instance_destroy();
	}
}