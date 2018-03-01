var _dir = argument[0];

show_debug_message(string(_dir));

if(_dir >= 0 || _dir <= 90){
    image_angle = 0;

}

if(_dir >= 91 || _dir <= 180){
    image_angle = 90;

}

if(_dir >= 181 || _dir <= 270){
    image_angle = 180;

}

if(_dir >= 271 || _dir <= 360){
    image_angle = 270;

}
