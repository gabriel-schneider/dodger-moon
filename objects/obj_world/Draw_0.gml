

draw_set_color(c_red)

var area = world_units_to_px(world_get_playable_area())

draw_rectangle(area[0], area[1], area[2], area[3], true)

draw_set_color(c_white)
