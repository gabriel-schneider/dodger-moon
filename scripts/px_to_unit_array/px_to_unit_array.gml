///@function px_to_unit_array(array)
///@param {real} array

var l = array_length_1d((argument0)), a = []
for (var i = 0; i < l; ++i) {
	a[i] = floor(argument0[i]/world_get_unit_size())
}
return a