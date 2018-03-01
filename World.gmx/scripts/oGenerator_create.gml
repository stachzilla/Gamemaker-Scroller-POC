randomize();
seed = round(random_range(1000000, 10000000));

blockSize = 8;

width = room_width / blockSize;
height = room_height / blockSize;

worldgrid = ds_grid_create(width, height);

generate();
