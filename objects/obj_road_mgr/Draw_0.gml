var unit_x_begin, unit_x_end, unit_y_begin, unit_y_end

var pa = world_get_playable_area()

unit_x_begin = world_px_to_units(clamp(camera_get_view_x(obj_camera.camera), 0, pa[2]))
unit_x_end = unit_x_begin + pa[2]

unit_y_begin = world_px_to_units(camera_get_view_y(obj_camera.camera))
unit_y_end = unit_y_begin + pa[3]

var draw_area = world_clamp_area([unit_x_begin, unit_y_begin, unit_x_end, unit_y_end])

for (var ix = draw_area[0]; ix < draw_area[2]; ix ++) {
	for (var iy = draw_area[1]; iy < draw_area[3]; iy ++) {		
		if (road_grid[# ix, iy] >= 0) {
			draw_sprite(spr_ts_road, road_grid[# ix, iy], world_units_to_px(ix), world_units_to_px(iy))
		}		
	}
}