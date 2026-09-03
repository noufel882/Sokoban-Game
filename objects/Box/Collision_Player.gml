if(other.object_index != Player.object_index)return;

new_x_pos =other.x_offset + x;
new_y_pos = other.y_offset + y;
if(pushable && place_free(new_x_pos,new_y_pos))
{
    move_and_collide(other.x_offset,other.y_offset,[Wall,Box]);
}
