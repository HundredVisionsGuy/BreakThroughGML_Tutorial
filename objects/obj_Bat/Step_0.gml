/// @description Insert description here
// You can write your code in this editor

// Keyboard movement
if ( keyboard_check(vk_left) ) 
{
	// If left arrow is being held down, move left)
	// only if it does not move off the screen
	if ( x > sprite_get_xoffset(sprite_index) + spd ) 
	{
		x -= spd; // move the bat left
	}
	else 
	{
		x = sprite_get_xoffset(sprite_index) + spd;
	}
}
if ( keyboard_check(vk_right) ) 
{
	if ( x < room_width - sprite_get_xoffset(sprite_index) - spd )
	{
		x += spd;
	}
	else 
	{
		x = room_width - sprite_get_xoffset(sprite_index) - spd
	}
}