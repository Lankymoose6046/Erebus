function EnemyHit(damage) {
    if (is_dead) return; // Prevent repeated death logic

    hp -= damage;

    // Hurt animation logic (only if still alive)
    if (hp > 0) {
        is_hurt = true;
        hurt_timer = hurt_duration;
        sprite_index = spr_ShadowDemonHurt;
        image_index = 0;
        image_speed = 0.5;
    }

    // Death logic
    if (hp <= 0 && !is_dead) {
        is_dead = true;
        death_timer = death_duration;
        sprite_index = spr_ShadowDemonDeath;
        image_index = 0;
        image_speed = 0.5; 
        hspeed = 0;
        vspeed = 0;
    }
}

is_dead = false;
death_timer = 0;
death_duration = 60;

is_hurt = false;
hurt_timer = 0;
hurt_duration = 30;

kb_x = 0;

kb_timer = 0;
kb_duration = 10;
kb_speed = 4;
target_x = x;