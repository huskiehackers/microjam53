// ================================
// CREATE EVENT (init only)
// ================================

// Make sure this object doesn't persist into other rooms unless you want it to
persistent = false;

// ----- STORY LINES -----
story_lines = [
    "YOUR SHIP IS UNDER SIEGE FROM ALIEN INVADERS.",
    "ALL OTHERS HAVE PASSED.",
    "YOU ARE THE LAST MAN STANDING.",
    "DO NOT PANIC.",
    "YOUR ESCAPE POD WILL BE READY IN T - 120 SECONDS.",
    "ORDER SUPPLIES AND CONFIGURE THE SHIP AT THE TERMINAL.",
    "WATCH YOUR OXYGEN AND FEND OFF THE INVADERS.",
    "GOOD LUCK LONE SURVIVOR."
];
story_index = 0;

// ----- TYPE SETTINGS -----
type_delay_frames      = 2;
backspace_delay_frames = 1;
pause_after_type       = 45;
pause_after_delete     = 20;
loop_intro = false;

// ----- STATE -----
typed_text = "";
state = "typing";
timer = 0;
tick = 0;
char_pos = 1;

// cursor blink
cursor_t = 0;
cursor_on = true;

// finish / transition
intro_done = false;
show_press_space = false;
press_space_blink_t = 0;
press_space_visible = true;
