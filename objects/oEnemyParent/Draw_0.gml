draw_self()

// Draw health bar above enemy
var bar_width = 30;
var bar_height = 4;
var bar_x = x - bar_width / 2;
var bar_y = y - sprite_height - 8; // Position above sprite

var health_ratio = hp / max_hp;

draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false); // Red background

draw_set_color(c_white);
draw_rectangle(bar_x, bar_y, bar_x + (bar_width * health_ratio), bar_y + bar_height, false); // Green foreground

draw_set_color(c_white); // Reset color
