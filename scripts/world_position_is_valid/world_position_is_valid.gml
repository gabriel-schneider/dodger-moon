/// world_position_is_valid(unit_x, unit_y)
/// @param unit_x
/// @param unit_y
/// @description check if a position in the world is in the playable area

return point_in_rectangle(argument0, argument1, obj_world.playable_area[0],
												obj_world.playable_area[1],
												obj_world.playable_area[2] - 1,
												obj_world.playable_area[3] - 1)