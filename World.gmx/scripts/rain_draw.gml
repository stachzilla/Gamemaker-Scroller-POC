draw_set_color(c_gray);
draw_set_alpha(.6);

var length, vectorx, vectory;

vectorx = (x - (view_xview + view_wview / 2)) / (view_wview / 2);
vectory = (y - (view_yview + view_hview / 2)) / (view_hview / 2);

length = 2;

draw_line_width(x + vectorx * sqr(height), y + vectory * sqr(height),
                x + vectorx * sqr(height + length), y + vectory * sqr(height + length), 2);

draw_set_alpha(1);
