///@function world_clamp_to_size(array)
///@param {real} array (left, top, right, bottom)
///@description clamp a array to world size

argument0[@ 0] = max(argument0[@ 0], 0)
argument0[@ 1] = max(argument0[@ 1], 0)
argument0[@ 2] = min(argument0[@ 2], world_get_width())
argument0[@ 3] = min(argument0[@ 3], world_get_height())