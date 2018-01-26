if (surface_exists(road_surface)) {
	draw_surface(road_surface,  snap_to_unit(camera_get_view_x(get_camera()) - world_get_unit_size()), 
								snap_to_unit(camera_get_view_y(get_camera()) - world_get_unit_size())) //)
} else {
	road_surface = road_create_surface()	
}