///world_road_update(unit_x, unit_y, propagate)

var unit_x = argument0
var unit_y = argument1
var propagate = argument2

var final = 0

if obj_world.road_grid[# unit_x + 1, unit_y] {
	final += 1
	if propagate {
		world_road_update(unit_x + 1, unit_y, false)	
	}
	
}

if obj_world.road_grid[# unit_x, unit_y + 1] {
	final += 2
	if propagate {
		world_road_update(unit_x, unit_y + 1, false)
	}
}

if obj_world.road_grid[# unit_x - 1, unit_y] {
	final += 4
	if propagate {
		world_road_update(unit_x - 1, unit_y, false)
	}
}

if obj_world.road_grid[# unit_x, unit_y - 1] {
	final += 8
	if propagate {
		world_road_update(unit_x, unit_y - 1, false)
	}
}

obj_world.road_direction_grid[# unit_x, unit_y] = final

//for (var ix = begin_x; ix < end_x; ++ix) {
//	for (var iy = begin_y; iy < end_y; ++iy) {
		
//	}
//}

