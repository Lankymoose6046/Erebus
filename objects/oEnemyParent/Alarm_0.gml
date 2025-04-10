if (instance_exists(obj_jin) && distance_to_object(obj_jin) < distance_to_player)
{
    target_x = obj_jin.x;
}
else
{
    target_x = random_range(xstart - 100, xstart + 100);
}

alarm[0] = 60;
