dist_player = distance_to_object(obj_player);
player_dir = point_direction(x, y, obj_player.x, obj_player.y);
ai_movement_speed = 2;
ldx = lengthdir_x(ai_movement_speed,player_dir);  
//TODO - need to figure out how to get the enemy player direction and if they "see" the player.

if(dist_player < range) {
    alerted = true;
    show_hp = true;

  //  ldy = lengthdir_y(1.0,player_dir); //use if we want to get Y positioning

      phy_position_x += ldx;
    if(ldx < 0){
       
    }
    
  //  phy_position_y += ldy; //use if we want to have AI chase via Y positioning
       sprite_index = spr_running;  //WE NEED TO INHERIT THIS
       image_speed = 0.1;

       
 if(dist_player < 100){
    phy_position_x = x;
    sprite_index = spr_idle;
 }   
}  else {
//        show_hp = false;
        sprite_index = spr_idle;
        //might get more advanced here.  Have the AI wander?
}
