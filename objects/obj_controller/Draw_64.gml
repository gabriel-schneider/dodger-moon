window_set_caption(fps_real)
draw_text(32, 32, 
	"\nDelta: " + string(get_delta()) +
	"\nCamera Unit X: " + string(camera_get_wux()) +
	"\nCamera Unit Y: " + string(camera_get_wuy()) +
	"\nMap Mouse X: " + string(obj_world._mouse_x) +
	"\nMap Mouse Y: " + string(obj_world._mouse_y) +
	"\nValid Position: " + string(world_position_is_valid(obj_world._mouse_x, obj_world._mouse_y))
)