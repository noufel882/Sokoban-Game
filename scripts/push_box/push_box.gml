function push_box(player , box ){

    var new_x_pos =box.x + player.x_offset;
    var new_y_pos = box.y+ player.y_offset;

    if(box.pushable && !place_meeting(new_x_pos,new_y_pos, [Wall, Box])) 
    {
        with(box)
        {
            move_and_collide(player.x_offset, player.y_offset, [Wall, Box]);
        }
    
        player.x += player.x_offset;
        player.y += player.y_offset;
     
    }
}