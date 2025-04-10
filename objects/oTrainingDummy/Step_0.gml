if (is_hurt) {
    hurt_timer--;
    if (hurt_timer <= 0) {
        is_hurt = false;
    }
}

if (flash_timer > 0) {
    flash_timer--;
}
