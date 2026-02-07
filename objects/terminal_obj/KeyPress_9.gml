cam_id = view_get_camera(0)

if (camera_get_view_x(cam_id) == 0)
{
	camera_set_view_pos(cam_id, 1140,0)
	
	//flush keyboard string
	keyboard_string = "";
}
else
{
	camera_set_view_pos(cam_id,0,0)
}