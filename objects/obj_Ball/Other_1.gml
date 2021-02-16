/// @description Insert description here
// You can write your code in this editor

if (bbox_left < 0 || bbox_right > room_width)
{
	x = clamp(x, sprite_get_xoffset(sprite_index), 
	room_width - sprite_get_xoffset(sprite_index));
	hspeed *= -1;
}
if (bbox_top < 0)
{
	vspeed *= -1;
}
else {
	// check if ball is leaving the bottom of the room
	if (bbox_bottom > room_height)
	{
		// create a new one at the initial starting position
		// then delete the ball that left the room
		instance_create_layer(xstart, ystart, layer, obj_Ball);
		instance_destroy();
	}
}
// with each bounce, increase the ball speed up to a max of 12px
if (speed < 12) speed += 0.1;
audio_play_sound(snd_Bounce, 0, false);
direction += 2 - random(4);