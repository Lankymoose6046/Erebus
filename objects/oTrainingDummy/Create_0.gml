// Dummy setup
is_hurt = false;
hurt_timer = 0;
hurt_duration = 5;
flash_timer = 0;
flash_duration = 3;

function EnemyHit(_damage) {
    is_hurt = true;
    hurt_timer = hurt_duration;

    flash_timer = flash_duration;
}
