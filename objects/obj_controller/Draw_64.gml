window_set_caption(fps_real)
draw_text(32, 32, 
	"Map Mouse X: " + string(obj_world._mouse_x) +
	"\nMap Mouse Y: " + string(obj_world._mouse_y) +
	"\nValid Position: " + string(world_position_is_valid(obj_world._mouse_x, obj_world._mouse_y))
)