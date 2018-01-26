// General variables
pos_prev_wux = 0
pos_prev_wuy = 0

pos_x = 0
pos_y = 0

pos_smooth_factor = 4
pos_smooth_enable = false
pos_smooth_x = 0
pos_smooth_y = 0
_speed = 4

// Zoom variables
zoom = 1
zoom_min = 1
zoom_max = 1.25
zoom_amount = 0.05

// Drag variables
drag_initial_x = 0
drag_initial_y = 0
drag_diff_x = 0
drag_diff_y = 0
drag_active = false

// Camera setup
var view_index = 0
camera = camera_create()
camera_set_view_size(camera, global.display_width, global.display_height)
camera_set_view_pos(camera, 0, 0)
view_set_camera(view_index, camera)
