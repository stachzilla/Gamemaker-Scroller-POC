if file_exists("savedata.ini") //Check if ini file exists
{
    ini_open("savedata.ini"); // open it
    global.totalmoney = ini_read_real("player","totalmoney",0); // load the value of the total money, set it to global.totalmoney, default 0.
    ini_close(); //close ini

} else {
    
    global.totalmoney = 0; // No ini, brand new game, set money to 0.
}
