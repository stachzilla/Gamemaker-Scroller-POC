       
    moneyamount = floor(random(max_enemy_money_drop));    
    //show_debug_message("Total : " + string(moneyamount));
    
    gold = floor(moneyamount / 10);
    moneyamount -= (gold * 10);
    //show_debug_message("Gold : " + string(gold) + " Left: " + string(moneyamount));
    
    silver = floor(moneyamount / 5);
    moneyamount -= (silver * 5);
    //show_debug_message("Silver : " + string(silver) + " Left: " + string(moneyamount));
    
    bronze = floor(moneyamount);
    //show_debug_message("Bronze : " + string(bronze) + " Left: " + string(moneyamount));
    
    for(var i = 0; i < gold; i++){
        instance_create(x, y, obj_money_gold);
    }
    for(var i = 0; i < silver; i++){
        instance_create(x, y, obj_money_silver);
    }
    for(var i = 0; i < bronze; i++){
        instance_create(x, y, obj_money_bronze);
    }
        

