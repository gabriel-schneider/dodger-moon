///road_destroy(unit_x, unit_y)
///@param unit_x
///@param unit_y

if road_exists(argument0, argument1) {	
	obj_road_mgr.road_grid[# argument0, argument1] = -1
	road_update(argument0, argument1, true)
}
	