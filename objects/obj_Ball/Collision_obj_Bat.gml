/// @description Insert description here
// You can write your code in this editor

vspeed *= -1; // reverse vertical speed
var _s = speed; // store speed in temp variable
var _dir = point_direction(other.x, other.y + 32, x, y);
var _dist = point_distance(x, y, other.x, other.y + 32);

// add to direction based on position of bounce
motion_add(_dir, _dist / 5);

// maintain the speed
speed = _s;
audio_play_sound(snd_Bounce, 0, false);