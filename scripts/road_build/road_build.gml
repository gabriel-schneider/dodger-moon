///road_build(unit_x, unit_y)
///@param unit_x
///@param unit_y

if (world_position_is_valid(argument0, argument1)) {
	obj_road_mgr.road_grid[# argument0, argument1] = 0
	road_update(argument0, argument1, true)
}	