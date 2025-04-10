if (is_dead) {
    death_timer--;
    if (death_timer <= 0) {
        instance_destroy();
    }
    exit;
}

if (hurt_timer > 0) {
    hurt_timer--;
    if (hurt_timer <= 0) {
        is_hurt = false;
        sprite_index = spr_shadowDemon;
    }
}

if (alarm[1] >= 0) {
    target_x = x + kb_x;
}

if (instance_exists(obj_jin)) {
    dir = point_direction(x, y, obj_jin.x, obj_jin.y);
    image_xscale = (obj_jin.x < x) ? -1 : 1;
}

var _hor = clamp(target_x - x, -1, 1);
var _ver = 0;

if (!is_hurt) {
    move_and_collide(_hor * move_speed, _ver * move_speed, [obj_ground, obj_jin]);
}
