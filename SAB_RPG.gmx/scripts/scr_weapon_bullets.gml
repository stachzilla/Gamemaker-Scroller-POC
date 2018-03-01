
number = 9;

for(i = 0; i < number; i ++){
    var b =  instance_create(obj_weapon.x, obj_weapon.y, obj_bullet);
        b.direction = point_direction(x, y, mouse_x, mouse_y);
        b.image_angle =  point_direction(x, y, mouse_x, mouse_y); 
        b.speed = 40;
}
