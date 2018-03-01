for(var i = 0; i < width; i++){
    draw_set_color(getColorZ(grid[# i,0]));
    draw_rectangle(i * blockSize, 0, 
        (i+1) * blockSize, blockSize, false);
}
