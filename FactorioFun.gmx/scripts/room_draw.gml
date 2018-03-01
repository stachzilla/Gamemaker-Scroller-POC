/// RoomDraw()
ds_grid_draw(world_grid, 0, 0);

draw_set_alpha(1);
draw_set_colour(c_white);
draw_text(10, 15, string(instance_count));
draw_text(10, 40, "Room Width " + string(room_width) + " : RW / Cell Width " + string(ds_grid_width(world_grid)));
draw_text(10, 60, "Room Height " + string(room_height) + " : RH / Cell Height " + string(ds_grid_height(world_grid)));
draw_text(10, 80, "FPS = " + string(fps_real));
draw_text(10, 100, "mD " + string(mD));
