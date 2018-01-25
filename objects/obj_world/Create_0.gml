width = 40
height = 40
unit_size = 32

playable_area_padding = 8
playable_area = [playable_area_padding, playable_area_padding, 
				 width - playable_area_padding, height - playable_area_padding]

_mouse_x = 0
_mouse_y = 0

road_grid = ds_grid_create(width, height)
road_direction_grid = ds_grid_create(width, height)

unit_reference_grid = ds_grid_create(width, height)