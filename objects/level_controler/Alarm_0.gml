if(win)return;

var checked_boxes_count = 0;

for(var i = 0; i < total_boxes_count; i++){
	if(checkboxes_list[i].isCheck == true)checked_boxes_count++;
}


if(checked_boxes_count == total_boxes_count)
{
    win = true;
    audio_play_sound(sound_level_complete,0,false);
    show_message("you win");
}