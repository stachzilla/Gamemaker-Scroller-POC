delay_to_player -= 1;

show_debug_message(delay_to_player);

if(delay_to_player <= 0){       
      delay_to_player = 0;
      dist_player = distance_to_object(obj_player);
      player_dir = point_direction(x, y, obj_player.x, obj_player.y);
      ldx = lengthdir_x(10,player_dir);  
      ldy = lengthdir_y(10, player_dir);
      
      phy_position_x += ldx;   
      phy_position_y += ldy;
}
