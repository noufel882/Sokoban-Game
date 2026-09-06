draw_self();

draw_set_font(font_main_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);


if (position_meeting(mouse_x,mouse_y,id))
{
    draw_set_color(#f3c623);
}

else {
	draw_set_color(#f4eedb);
}


draw_text(x,y,self.Text);


draw_set_halign(fa_left);
draw_set_valign(fa_top);

