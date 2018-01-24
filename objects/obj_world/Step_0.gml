world_update_mouse_position()

var xx = world_get_mouse_x()
var yy = world_get_mouse_y()
	
if (mouse_check_button(mb_left)) {
	if (world_is_valid_pos(xx, yy)) {
		road_grid[# xx, yy] = true
		world_road_update(xx, yy, true)
	}	
}

if (mouse_check_button(mb_right)) {
	if (world_is_valid_pos(xx, yy)) {
		road_grid[# xx, yy] = false
		world_road_update(xx, yy, true)
	}	
}
