draw_self();

draw_set_font(font_main_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);


if (position_meeting(mouse_x,mouse_y,id))
{
    draw_set_color(c_yellow);
}

else {
	draw_set_color(c_white);
}


draw_text(x,y,self.Text);


draw_set_halign(fa_left);
draw_set_valign(fa_top);

