width = 32
height = 32
unit_size = 32

playable_area = [0, 0, width, height]

_mouse_x = 0
_mouse_y = 0

road_grid = ds_grid_create(playable_area[2], playable_area[3])
road_direction_grid = ds_grid_create(playable_area[2], playable_area[3])