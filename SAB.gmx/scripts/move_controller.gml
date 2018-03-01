gamepad_set_axis_deadzone(0, 0.99); //dunno if I wanna do this

if(gamepad_button_check(0, gp_padr) || (gamepad_axis_value(0, gp_axislh) > 0)){
    image_xscale = 1; 
    physics_apply_force(x,y, move_speed * sprint_multiplier, -20);
}
if(gamepad_button_check(0, gp_padl) || (gamepad_axis_value(0, gp_axislh) < 0)){
    image_xscale = -1; //flip the sprite left
    physics_apply_force(x,y, -move_speed * sprint_multiplier, -20);
}

