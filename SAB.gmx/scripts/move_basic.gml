phy_fixed_rotation = true;

colliding_with_ground = position_meeting(x,y, obj_collision);

if(colliding_with_ground){
    physics_apply_impulse(x, y, 0, -200);
}

