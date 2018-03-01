for(var i = 0; i < width; i++){
    for(var j = 0; j < height; j++){
        var zz = getPerlinNoise(i,j,100);
        //    ds_grid_add(worldgrid, i,0,zz);
        worldgrid[# i,j] = zz;
    }
}
