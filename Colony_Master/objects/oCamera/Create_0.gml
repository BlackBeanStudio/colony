///@description Camera initialize

// camera that follows the player
view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 480;
view_hport[0] = 270;
view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, oPlayer, 1.5, 1.5, 240, 135);
surface_resize(application_surface, 1920, 1080);
window_set_size(view_wport[0]*4,view_hport[0]*4);