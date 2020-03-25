///@arg array

var data = argument0;
var size = array_height_2d(data);

var i, j, k;
for (i = 0; i < size; i += 1)
{
    j = irandom_range(i, size - 1)
    if (i != j)
    {
        k = data[i]
        data[i] = data[j]
        data[j] = k
    }
}

return data;