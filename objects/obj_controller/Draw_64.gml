draw_text(32, 32, 
	"Map Mouse X: " + string(obj_world._mouse_x) +
	"\nMap Mouse Y: " + string(obj_world._mouse_y) +
	"\nValid Position: " + string(world_is_valid_pos(obj_world._mouse_x, obj_world._mouse_y))
)