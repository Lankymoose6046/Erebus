var scale = 0.5;
var slot_spacing = 36;

var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();

var base_x = 28; // shifted slightly to the right
var base_y = gui_height - 20 - (32 * scale); // 20px from bottom

for (var i = 0; i < 3; i++) {
    var slot_x = base_x + (i * slot_spacing);

    // Draw inventory slot
    draw_sprite_ext(sInventorySlots, 0, slot_x, base_y, scale, scale, 0, c_white, 1);

    // Draw highlight for selected slot
    if (i == selected_slot) {
        draw_set_color(c_white);
        draw_rectangle(slot_x - 2, base_y - 2, slot_x + 32 * scale + 2, base_y + 32 * scale + 2, false);
    }

    // Draw item sprite if not empty
    var item_sprite = inventory[i];
    if (item_sprite != -1) {
        draw_sprite_ext(item_sprite, 0, slot_x + 4 * scale, base_y + 4 * scale, scale, scale, 0, c_white, 1);
    }
}
