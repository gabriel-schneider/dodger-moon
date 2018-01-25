///road_update(unit_x, unit_y, propagate)
///@param unit_x
///@param unit_y
///@param propagate

var unit_x = argument0
var unit_y = argument1
var propagate = argument2

var final = 0
var grid = obj_road_mgr.road_grid

if road_exists(unit_x + 1, unit_y) {
	final += 1
	if propagate > 0 {
		road_update(unit_x + 1, unit_y, propagate - 1)	
	}
}	

if road_exists(unit_x, unit_y + 1) {
	final += 2
	if propagate > 0 {
		road_update(unit_x, unit_y + 1, propagate - 1)	
	}
}	

if road_exists(unit_x - 1, unit_y) {
	final += 4
	if propagate > 0 {
		road_update(unit_x - 1, unit_y, propagate - 1)
	}
}

if road_exists(unit_x, unit_y - 1) {
	final += 8
	if propagate > 0 {
		road_update(unit_x, unit_y - 1, propagate - 1)
	}
}

if road_exists(unit_x, unit_y) {
	obj_road_mgr.road_grid[# unit_x, unit_y] = final
}


