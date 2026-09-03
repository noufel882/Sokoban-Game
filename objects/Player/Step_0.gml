x_offset = 0;
y_offset = 0;

var moving = false;

if (keyboard_check(vk_right))
{
    x_offset = 1;
    moving = true;
}
else if (keyboard_check(vk_left))
{
    x_offset = -1;
    moving = true;
}
else if (keyboard_check(vk_down))
{
    y_offset = 1;
    moving = true;
}
else if (keyboard_check(vk_up))
{
    y_offset = -1;
    moving = true;
}

move_and_collide(x_offset, y_offset, Wall);


// Footstep sound
if (moving)
{
    if (footstep_timer <= 0)
    {
        audio_play_sound(sound_player_move, 11, false);
        footstep_timer = footstep_delay;
    }
    else
    {
        footstep_timer--;
    }
}
else
{
    footstep_timer = 0;
}