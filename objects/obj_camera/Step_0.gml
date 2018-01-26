var cam_spd = _speed*zoom
var cam_mov_x = (keyboard_check(ord("D")) - keyboard_check(ord("A")))*cam_spd
var cam_mov_y = (keyboard_check(ord("S")) - keyboard_check(ord("W")))*cam_spd

pos_x += cam_mov_x*get_delta()
pos_y += cam_mov_y*get_delta()

var view_width = camera_get_view_width(camera)
var view_height = camera_get_view_height(camera)

var world_size = unit_to_px_array(world_get_size())
pos_x = clamp(pos_x, view_width*0.5, world_size[0] - view_width*0.5)
pos_y = clamp(pos_y, view_height*0.5, world_size[1] - view_height*0.5)

pos_smooth_x += (pos_x - pos_smooth_x)*(1/pos_smooth_factor)*get_delta()
pos_smooth_y += (pos_y - pos_smooth_y)*(1/pos_smooth_factor)*get_delta()

camera_zoom((mouse_wheel_down() - mouse_wheel_up())*zoom_amount)

camera_set_view_size(camera, global.display_width*zoom,
							 global.display_height*zoom)
							 
camera_set_view_pos(camera, pos_smooth_x - camera_get_view_width(camera)*0.5, 
							pos_smooth_y - camera_get_view_height(camera)*0.5)
							
						
							
if (mouse_check_button_pressed(mb_middle)) {
	drag_initial_x = pos_x
	drag_diff_x = device_mouse_x_to_gui(0)
	drag_initial_y = pos_y
	drag_diff_y = device_mouse_y_to_gui(0)
	drag_active = true
}

if (camera_is_dragging()) {
	pos_x = drag_initial_x + (drag_diff_x - device_mouse_x_to_gui(0))
	pos_y = drag_initial_y + (drag_diff_y - device_mouse_y_to_gui(0))

	if (mouse_check_button_released(mb_middle)) {
		drag_initial_x = 0
		drag_diff_x = 0
		drag_initial_y = 0
		drag_diff_y = 0
		drag_active = false
	}
}


if (pos_prev_wux != camera_get_wux()) || (pos_prev_wuy != camera_get_wuy()) {
	road_update_surface()
}

pos_prev_wux = camera_get_wux()
pos_prev_wuy = camera_get_wuy()
