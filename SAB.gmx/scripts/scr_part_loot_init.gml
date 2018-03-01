{
    // Initialize our global blood particle
    global.pt_loot = part_type_create();
    var pt = global.pt_loot; 
    
    // Create settings for blood particle
    part_type_shape(pt, pt_shape_smoke);
    part_type_size(pt, .01, .1, 0, 0);
    part_type_color2(pt, c_white, c_yellow);
    part_type_speed(pt, 2, 2, 0, 0);

    part_type_direction(pt, 0, 180, 0, 0); //can go anywhere 0-360        
    
    part_type_gravity(pt, 0, 180); //downward
    part_type_life(pt, 25, 50);    
    

    
}
