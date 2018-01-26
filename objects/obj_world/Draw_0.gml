

draw_set_color(c_red)

var area = unit_to_px_array(world_get_playable_area())

draw_rectangle(area[0], area[1], area[2], area[3], true)

var size = unit_to_px_array(world_get_size())

draw_set_color(c_white)

draw_rectangle(0, 0, size[0], size[1], true)
