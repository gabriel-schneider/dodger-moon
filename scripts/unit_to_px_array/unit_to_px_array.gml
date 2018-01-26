///@function unit_to_px_array(array)
///@param {real} array

var l = array_length_1d((argument0)), a = []
for (var i = 0; i < l; ++i) {
	a[i] = argument0[i]*world_get_unit_size()
}
return a