var is_valid = world_position_is_valid(obj_world._mouse_x, obj_world._mouse_y);

if is_valid {
	draw_set_color(c_lime)
} else {
	draw_set_color(c_red)
}

var mx = world_units_to_px(obj_world._mouse_x)
var my = world_units_to_px(obj_world._mouse_y)

draw_set_alpha(0.25)
draw_rectangle(mx, my, mx + 31, my + 31, false)
draw_set_alpha(1)

draw_rectangle(mx, my, mx + 31, my + 31, true)
