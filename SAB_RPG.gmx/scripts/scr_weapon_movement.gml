x = obj_player.x;
y = obj_player.y;

image_angle = point_direction(x, y, mouse_x, mouse_y); 

if(mouse_y > obj_player.y - 30){
    depth = 0;
}

if(mouse_y < obj_player.y - 30){
    depth = 10;
}

if(mouse_x < obj_player.x){
   image_yscale = -1;
}

if(mouse_x > obj_player.x){
   image_yscale = 1;
}
