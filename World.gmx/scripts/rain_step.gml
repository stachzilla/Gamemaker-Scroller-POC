height -= 1;

if(height <= 0){
    instance_destroy();
    instance_create(x,y,obj_splash);
}
