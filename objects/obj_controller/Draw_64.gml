if (show_intro_text) {
    // Black background
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

    // White text in center
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	draw_set_font(fShogunClan);
    draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "Your journey starts today.");
}
	