// ================================
// DRAW GUI EVENT (centered)
// Fix: restore draw state so other objects don't inherit font/align/color.
// ================================

// ---- SAVE DRAW STATE (prevents "random text" elsewhere) ----
var _old_font   = draw_get_font();
var _old_halign = draw_get_halign();
var _old_valign = draw_get_valign();
var _old_color  = draw_get_color();
var _old_alpha  = draw_get_alpha();

// --- recompute GUI center every frame ---
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var text_x = gui_w * 0.5;
var text_y = gui_h * 0.30;

// --- set draw state for intro ---
draw_set_font(terminal_font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_lime);
draw_set_alpha(1);

// Story text
var cursor = "";
if (cursor_on) cursor = "_";

draw_text(text_x, text_y, typed_text + cursor);

// PRESS SPACE prompt
if (show_press_space && press_space_visible)
{
    draw_text(text_x, text_y + 60, "PRESS SPACE TO START");
}

// ---- RESTORE DRAW STATE ----
draw_set_font(_old_font);
draw_set_halign(_old_halign);
draw_set_valign(_old_valign);
draw_set_color(_old_color);
draw_set_alpha(_old_alpha);
