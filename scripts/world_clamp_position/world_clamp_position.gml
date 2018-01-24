///world_clamp_position([x, y])

var a = []

a[0] = clamp(argument0[0], 0, obj_world.playable_area[2])
a[1] = clamp(argument0[1], 0, obj_world.playable_area[3])

return a