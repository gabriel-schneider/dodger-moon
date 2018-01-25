var xx = world_get_mouse_x()
var yy = world_get_mouse_y()
	
if (mode == "road") {	
	if (mouse_check_button(mb_left)) {
		road_build(xx, yy)
	}

	if (mouse_check_button(mb_right)) {
		road_destroy(xx, yy)	
	}	
}