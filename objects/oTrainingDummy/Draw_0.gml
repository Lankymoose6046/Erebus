if (flash_timer > 0) {
    shader_set(shd_white_flash);
    draw_self();
    shader_reset();
} else {
    draw_self();
}
