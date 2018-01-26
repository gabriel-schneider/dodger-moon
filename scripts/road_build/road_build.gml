///road_build(unit_x, unit_y)
///@param unit_x
///@param unit_y

if world_can_edit_at(argument0, argument1) && !road_exists(argument0, argument1) {
	world_set_unit_ref(argument0, argument1, obj_road_mgr)
	obj_road_mgr.road_grid[# argument0, argument1] = 0
	road_update(argument0, argument1, true)
	return true
}
return false