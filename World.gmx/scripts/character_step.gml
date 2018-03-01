switch(state){
    case "MOVING": {
        switch(facing){
            case enum_facing.up: {
                vx = 0;
                vy = -move_speed;
                break;
            }
            case enum_facing.right: {
                vx = move_speed;
                vy = 0;
                break;
            }
            case enum_facing.down: {
                vx = 0;
                vy = move_speed;
                break;
            }
            case enum_facing.left: {
                vw = -move_speed;
                vy = 0;
                break;
            }
        }
        //TODO - remove this next line once I'm set on better movement options
/*
        if(irandom(100) < 2) facing = choose(enum_facing.up, enum_facing.right, enum_facing.down, enum_facing.left);
        image_angle = facing - 90;
*/
        break;
    }
    case "SHOOTING": {
        break;
    }
}


if mouse_check_button(mb_left)
{
    m_x = mouse_x
    m_y = mouse_y
   
   // show_debug_message(string(active));
}
else
{ 
        character_direction(direction);
        mp_grid_path(global.grid, global.path, x, y, m_x, m_y, 1);
        path_start(global.path, 4, path_action_stop, 0);

}

/*
show_debug_message("X" + string(x));
show_debug_message("Y" + string(y));
show_debug_message("Dir: " + string(direction));
*/


/*
cx += vx;
cy += vy;

vxNew = round(cx);
vyNew = round(cy);

cx = vx - vxNew;
cy = vy - vyNew;

check_collision_obj(vxNew,vyNew, obj_solid);
*/
