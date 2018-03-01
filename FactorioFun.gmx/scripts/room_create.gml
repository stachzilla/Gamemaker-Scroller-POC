/// RoomCreate()

w = ceil(room_width / _CellWidth);
h = ceil(room_height / _CellHeight);
world_grid = ds_grid_create(w, h);
mD = false;
ds_grid_clear(world_grid, _Grass); //Default to grass. We can build from here

//ds_grid_set_region(world_grid, 0, 0, w - 1, h - 1, _Grass);

// Randomize the world
randomize();

var i = 0;
var j = 0;
repeat(ds_grid_width(world_grid)){
    repeat(ds_grid_height(world_grid)){
        ds_grid_set(world_grid, i, j, irandom(9));
        j++;
    }
    j = 0;
    i += 1;
}


/*
var i, j;
for (i = 0; i < ds_grid_width(world_grid); i += 1)
   {
   for (j = 0; j < ds_grid_height(world_grid); j += 1)
      {
      if ds_grid_get(world_grid, i, j) = 1
         {
         instance_create(i * 32, j * 32, obj_Wall);
         } else {
//         instance_create(i * 32, j * 32, obj_Grass);
         }
      }
   } 
   */  
