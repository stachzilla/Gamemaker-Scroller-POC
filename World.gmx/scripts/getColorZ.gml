var zz = argument0;
var r = 0, b = 0, g = 0;

if(zz < 50){
    b = 50 + (zz / 50) * 200;
} else {
    g = 50 + ((zz - 50) / 50) * 200;
}

return make_color_rgb(r,g,b);
