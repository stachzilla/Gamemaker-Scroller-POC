///ds_grid_draw(grid,x,y)
//
//  Draws the data of a given grid at a screen location.
//
//      grid        grid data structure, id
//      x,y         screen position, real
//
///
{
    var grid = argument0;
    var sx = argument1;
    var sy = argument2;

    var w = ds_grid_width(grid);
    var h = ds_grid_height(grid);

    var M = ds_grid_get_max(grid,0,0,w-1,h-1);
    var m = ds_grid_get_min(grid,0,0,w-1,h-1);
    if (M == m) var f = 0 else var f = 1/(M-m);

    for (var i=0; i<w; i++)
    {
        for (var j=0; j<h; j++)
        {
            var value = f*(ds_grid_get(grid,i,j)-m);
            cellval = ds_grid_get(grid, i, j);
            draw_point_colour((sx + i) * _CellWidth, (sy + j) * _CellHeight, make_colour_hsv(0,0, clamp(255*value,0,255) ) );
            draw_set_colour(c_orange);
            draw_set_alpha(0.5);
            draw_text((sx + i) * _CellWidth, (sy + j) * _CellHeight, cellval);
        }
    }

    return 0;
}
