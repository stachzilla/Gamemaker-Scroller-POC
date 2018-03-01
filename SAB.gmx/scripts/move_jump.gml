if(place_meeting(x, y+1, obj_collision)){  
    jumping = true;
    physics_apply_impulse(x,y,0,jump_force);
    show_debug_message("jump");
}
