///generate rain
edge = 200; //how far outside of our view should the rain be rendered

repeat(40){
    instance_create(view_xview - edge + random(view_wview + edge*2), 
        view_yview - edge + random(view_hview + edge * 2),
        obj_rain);
}
