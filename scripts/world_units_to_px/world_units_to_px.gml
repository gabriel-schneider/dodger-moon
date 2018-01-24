///map_convert_units_to_px



if (is_array(argument0)) {
	var a = []
	var l = array_length_1d((argument0))
	for (var i = 0; i < l; ++i) {
		a[i] = argument0[i]*obj_world.unit_size
	}
	return a
} else {
	return argument0*obj_world.unit_size
}

