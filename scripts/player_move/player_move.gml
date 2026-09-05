function player_move(key)
{
    if (key == noone) return;
        
    x_offset = 0;
    y_offset = 0;


    if (struct_exists(global.movement , key))
    {
        if (key == vk_left || key == vk_right) {
            x_offset = global.movement[$key];
        }
        else if (key == vk_up || key == vk_down) {
            y_offset = global.movement[$key];
        }
    }

    if (x_offset != 0 || y_offset != 0)
    {
        if (!place_meeting(x + x_offset, y + y_offset, Wall))
        {
            x += x_offset;
            y += y_offset;
        }
        
        audio_play_sound(sound_player_move,10,false);
    }
    
}