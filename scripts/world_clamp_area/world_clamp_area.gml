///world_clamp_area(array)
///@param array - rectangle

var a = []

a[0] = clamp(argument0[0], 0, obj_world.playable_area[2])
a[1] = clamp(argument0[1], 0, obj_world.playable_area[3])

a[2] = clamp(argument0[2], 0, obj_world.playable_area[2])
a[3] = clamp(argument0[3], 0, obj_world.playable_area[3])

return a