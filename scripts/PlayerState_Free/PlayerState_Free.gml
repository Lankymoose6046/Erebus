function PlayerState_Free () {

	
//calculate movement
var move = key_right - key_left

hsp = move * walksp;

vsp = vsp + grv;


if(place_meeting( x,y+1, obj_ground))  and (key_jump)
{
vsp = -7;	
}

//Horizontal Collision
if (place_meeting(x+hsp, y, obj_ground)) 
{
	while (!place_meeting (x+sign(hsp), y, obj_ground)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x, y+vsp, obj_ground)) 
{
	while (!place_meeting (x, y+sign(vsp), obj_ground)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if(!place_meeting(x,y+1, obj_ground)) {
	sprite_index = sJinJump
	image_speed = 0.3;

	if (sign(vsp)>0) image_index = 1; else image_index = 0;
}
else 
{
	image_speed = 0.2;
	if hsp == (0)
	{
		sprite_index = spr_jin
	}
	else
	{
		sprite_index = sJinRun
	}
	
}
}

   
