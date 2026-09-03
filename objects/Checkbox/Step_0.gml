if(!isCheck){
    
    var box = instance_place(x,y,Box);

    if(box != noone && (box.x == self.x  && box.y == self.y))
    {
        sprite_index = sprite_checkbox_checked;
        isCheck = true;
        box.pushable = false;
        audio_play_sound(sound_box_checked, 10, false);
    }


    with (level_controler)
    {
        alarm[0] = 1;
    }
}