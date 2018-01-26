var xx = world_get_mouse_x()
var yy = world_get_mouse_y()
	
if (mode == "road") {
	if (mouse_check_button(mb_left)) {
		if road_build(xx, yy) {
			road_update_surface()	
		}
	}

	if (mouse_check_button(mb_right)) {
		if road_destroy(xx, yy) {
			road_update_surface()	
		}
	}
}