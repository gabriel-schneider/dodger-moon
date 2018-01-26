///@function world_position_is_valid(unit_x, unit_y)
/// @param {real} unit_x
/// @param {real} unit_y
/// @description check if a position is inside world

return point_in_rectangle(argument0, argument1, 0,
												0,
												world_get_width() - 1,
												world_get_height() - 1)