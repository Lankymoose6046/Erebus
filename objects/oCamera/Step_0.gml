if (follow != noone)
{
	xTo = follow.x;

	
	x += (xTo - x) / 25;

	
	camera_set_view_pos(view_camera [0], x-(camwidth*0.5), y-(camHeight*0.5));
	
}