draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_font(open_sans_bold_10);

//do all of this shit to get a comma when needed;
totalmoney = global.totalmoney;
var str,len;
str=string(totalmoney)
len=string_length(str)
repeat(len/3){ str=string_insert(',',str,len-2); len-=3; }

draw_text(view_xview[0] + 20,view_yview[0] + 40,str)
