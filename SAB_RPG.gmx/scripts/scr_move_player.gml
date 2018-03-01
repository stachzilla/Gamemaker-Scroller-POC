playerspeed = 5; //TODO need this to be global

if keyboard_check(ord('W')){
    y -= playerspeed;
}
if keyboard_check(ord('S')){
    y += playerspeed;
}
if keyboard_check(ord('D')){
    x += playerspeed;
}
if keyboard_check(ord('A')){
    x -= playerspeed;
}

if (mouse_check_button_pressed(mb_left))
{
    script_execute(scr_attack_primary);       
}

if (mouse_check_button(mb_right))
{
    script_execute(scr_attack_secondary);
}

if(mouse_y > y - 30){
   sprite_index = spr_matt_down;
}

if(mouse_y < y - 30){
   sprite_index = spr_matt_up;
}

if(mouse_x < x){
    image_xscale = -1;
}

if(mouse_x > x){
    image_xscale = 1;
}
