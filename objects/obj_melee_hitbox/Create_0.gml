// Create Event
image_speed = 0;
alarm[0] = 3; // Hitbox lasts 3 frames (adjust as needed)

// Collision with enemy (e.g., obj_enemy)
if (place_meeting(x, y, obj_shadowDemon)) {
    with (obj_Demon) {
        hp -= 10; // or call a take_damage() script
    }
}