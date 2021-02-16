/// @description Insert description here
// You can write your code in this editor
if (!go) 
{
	// ball is not yet moving
	// move if space is pressed
	if (keyboard_check_pressed(vk_space))
	{
		// set ball speed and direction and 
		// the go variable so this code won't run again
		go = true;
		speed = spd;
		direction = dir;
		audio_play_sound(snd_Click, 0, false);
	}
}