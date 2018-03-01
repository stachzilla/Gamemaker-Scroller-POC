var xx = argument0;
var yy = argument1;
var range = argument2;

var chunkSize = 16;

var noise = 0;

range = range div 2;

while(chunkSize > 0){
    var index_x = xx div chunkSize;
    var index_y = yy div chunkSize;
        
    var prog = (xx % chunkSize) / chunkSize;
    
    var left_random = randomSeed(chunkIndex, range);
    
}
