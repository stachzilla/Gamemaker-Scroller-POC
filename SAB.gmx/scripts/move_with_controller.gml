gamepad_set_button_threshold(0, 0.1); 
gamepad_set_axis_deadzone(0, 0.75); //dunno if I wanna do this

if(gamepad_button_check(0, gp_padr) || (gamepad_axis_value(0, gp_axislh) > 0) || (gamepad_axis_value(0, gp_axislv) > 0)){ //move right
    image_xscale = 1; 
    global.player_right = true;
    physics_apply_force(x,y, move_speed * sprint_multiplier, -20);
}


if(gamepad_button_check(0, gp_padl) || (gamepad_axis_value(0, gp_axislh) < 0)){ //move left
    image_xscale = -1; //flip the sprite left
        global.player_right = false;
    physics_apply_force(x,y, -move_speed * sprint_multiplier, -20);
} 

if(gamepad_button_check_pressed(0, gp_face1)){ //A button on Xbox, X button on PS
    if(place_meeting(x, y+1, obj_collision)){
        jumping = true;
        physics_apply_impulse(x,y,0,jump_force);
        show_debug_message("jump");
    }
}

if(gamepad_button_check_pressed(0, gp_shoulderl)){ //LB button
    //TODO - add dive/blink/etc
}


if(gamepad_button_check(0, gp_shoulderrb)){
            if(phy_speed_x > 0.1 || phy_speed_x < -0.1){
                sprite_index = spr_player_running_shooting_hip_fire;
            } else {
                sprite_index = spr_player_shooting_hip_fire;        
            }
                       
            dist_player = distance_to_object(obj_collision);
            player_dir = point_direction(x, y, obj_player.x, obj_player.y);
            
    if(instance_number(obj_bullet) < 1){            
            instance_create(x,y,obj_bullet);
    }
    
    global.current_damage = ceil(random_range(8, 12));
            
}

if (gamepad_button_check(0, gp_face3)) //X button on Xbox, [] button on PS
{

        sprint_multiplier = 3;
        /*
        phy_speed_y = 0; 
        phy_speed_x = 0;
        if(sprite_index != spr_player_pistol_fire){
            sprite_index = spr_player_pistol_fire;
            show_debug_message('shoot');
        }
        */
}

if (gamepad_button_check_released(0, gp_face3)){
    sprint_multiplier = 1;
}
