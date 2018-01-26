var world_size = world_get_size()

var cam_wux = camera_get_wux() - 1
var cam_wuy = camera_get_wuy() - 1

var cam_wuw = px_to_unit(camera_get_view_width(get_camera())) + 2
var cam_wuh = px_to_unit(camera_get_view_height(get_camera())) + 2

var grid = obj_road_mgr.road_grid

surface_set_target(obj_road_mgr.road_surface)
draw_clear_alpha(c_black, 0)
for (var ix = 0; ix <= cam_wuw; ix++) {
	for (var iy = 0; iy <= cam_wuh; iy++) {
		
		if (world_position_is_valid(cam_wux + ix, cam_wuy + iy)) {		
			var a = grid[# cam_wux + ix, cam_wuy + iy]
		
			if a >= 0 {
				draw_sprite(spr_ts_road, a, unit_to_px(ix), unit_to_px(iy))
				//show_debug_message("Drawing road (" + string(a) + ") to position " + string(ix) + "x" + string(iy))
			}
		}
		
	}
}
surface_reset_target()


