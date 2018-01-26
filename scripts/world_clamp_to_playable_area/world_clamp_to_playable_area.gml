///@function world_clamp_to_playable_area(array)
///@param {real} array (left, top, right, bottom)
///@description clamp a array to world playable area

var pa = world_get_playable_area()
argument0[@ 0] = max(argument0[@ 0], pa[0])
argument0[@ 1] = max(argument0[@ 1], pa[1])
argument0[@ 2] = min(argument0[@ 2], pa[2])
argument0[@ 3] = min(argument0[@ 3], pa[3])