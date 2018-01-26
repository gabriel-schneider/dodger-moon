///@function world_can_edit_at(unit_x, unit_y)
///@param {real} unit_x
///@param {real} unit_y
///@description check if the position is inside the playable area

var pa = world_get_playable_area()
return point_in_rectangle(argument0, argument1, pa[0],
												pa[1],
												pa[2] - 1,
												pa[3] - 1)