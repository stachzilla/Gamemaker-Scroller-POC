_speed = 10;

left = keyboard_check(ord('A'));
right = keyboard_check(ord('D'));
down = keyboard_check(ord('S'));
up = keyboard_check(ord('W'));

vx = (right - left) * _speed;
vy = (down - up) * _speed;

view_xview += vx;    
view_yview += vy;

//show_debug_message(string(room_width));
