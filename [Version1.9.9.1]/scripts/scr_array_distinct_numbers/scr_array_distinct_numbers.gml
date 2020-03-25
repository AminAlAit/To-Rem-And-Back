///@arg length
///@arg min_random
///@arg max_random

var list		 = ds_list_create();
var length		 = argument0 - 1;
var randIndex	 = argument1;
var randIncrease = argument2;

list[| length] = 0; // removes re-allocation performance reduction
for( var i = 0; i != length; i ++){
    list[| i] = irandom_range(randIndex, randIncrease);
    randIndex = list[| i];
}
ds_list_shuffle(list);

var _array = array_create(length, 0);
for(var j = 0; j != length; j ++){
	_array[j] = list[| j];
}

return _array;