var is_valid = world_position_is_valid(obj_world._mouse_x, obj_world._mouse_y);

if is_valid {
	draw_set_color(c_lime)
} else {
	draw_set_color(c_red)
}

var mx = unit_to_px(world_get_mouse_x())
var my = unit_to_px(world_get_mouse_y())

draw_set_alpha(0.25)
draw_rectangle(mx, my, mx + world_get_unit_size() - 1, my + world_get_unit_size() - 1, false)
draw_set_alpha(1)

draw_rectangle(mx, my, mx + world_get_unit_size() - 1, my+ world_get_unit_size() - 1, true)
