///world_position_get_type(unit_x, unit_y)
if (world_position_is_valid(argument0, argument1)) {
	return obj_world.unit_type_grid[# argument0, argument1]
}