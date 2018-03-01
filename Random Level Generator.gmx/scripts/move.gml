///move(hspd, vspd)
var hspd = argument[0];
var vspd = argument[1];

// Horizontal collisions
if(grid_place_meeting(x+hspd, y, 0)){ //cell_type not implemented yet
    while(!grid_place_meeting(x+sign(hspd), y, 0)){
        x += sign(hspd);
    }
    hspd = 0;
}

// Vertical collisions
if(grid_place_meeting(x, y + vspd, 0)){ //cell_type not implemented yet
    while(!grid_place_meeting(x, y+sign(vspd), 0)){
        y +=sign(vspd);
    }
    vspd = 0;
}

// Move horizontally
x += hspd;

// Move vertically
y += vspd;

