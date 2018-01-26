///@function road_create_surface()

return surface_create(
	snap_to_unit(camera_get_view_width(obj_camera.camera)) + world_get_unit_size()*2, 
	snap_to_unit(camera_get_view_height(obj_camera.camera)) + world_get_unit_size()*2
)