/// @description Update

// WASD Keys support
if (keyboard_check(ord("W")) || keyboard_check(vk_up))
{
	y = y - MySpeed;
}

if (keyboard_check(ord("S")) || keyboard_check(vk_down))
{
	y = y + MySpeed;
}

if (keyboard_check(ord("A")) || keyboard_check(vk_left))
{
	x = x - MySpeed;
}

if (keyboard_check(ord("D")) || keyboard_check(vk_right))
{
	x = x + MySpeed;
}

if keyboard_check(vk_escape)
{
	game_end();
}

// - Turn to face mouse/cursors
image_angle = point_direction(x,y, mouse_x, mouse_y);

// Fire
if mouse_check_button(mb_left)
{
	MyBullet = instance_create_depth(x, y, 3,oBullet);
	
	MyBullet.direction = image_angle;
	MyBullet.speed = 20;
	MyBullet.image_angle = image_angle;
}