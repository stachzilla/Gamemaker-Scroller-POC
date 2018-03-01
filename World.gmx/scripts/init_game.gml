globalvar grid;
globalvar path;
grid = mp_grid_create(0, 0, room_width / 16, room_height /16, 16, 16);
path = path_add();
mp_grid_add_instances(grid, obj_solid, false);

xm1 = 0;
xm2 = 0;
grabbed = false;

globalvar currentNPC;

enum enum_facing {
    up = 90,
    right = 0,
    down = 270,
    left = 180    
}

//window_set_cursor(cr_none);
//cursor_sprite = spr_cursor;

