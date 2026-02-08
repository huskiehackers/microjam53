// ================================
// STEP EVENT
// ================================

// Cursor blink
cursor_t += 1;
if (cursor_t >= 30)
{
    cursor_t = 0;
    cursor_on = !cursor_on;
}

// If intro finished, blink prompt and wait for SPACE
if (show_press_space)
{
    press_space_blink_t += 1;
    if (press_space_blink_t >= 30)
    {
        press_space_blink_t = 0;
        press_space_visible = !press_space_visible;
    }

    if (keyboard_check_pressed(vk_space))
    {
        // IMPORTANT: destroy this object so it cannot draw in the next room
        instance_destroy();
        room_goto(Spaceship_room);
    }

    exit;
}

// Drive typing/backspace
tick += 1;
var line = story_lines[story_index];

// --- TYPING ---
if (state == "typing")
{
    if (tick >= type_delay_frames)
    {
        tick = 0;

        if (char_pos <= string_length(line))
        {
            typed_text += string_char_at(line, char_pos);
            char_pos += 1;
        }
        else
        {
            state = "pause_type";
            timer = pause_after_type;
        }
    }
}
// --- PAUSE AFTER TYPE ---
else if (state == "pause_type")
{
    timer -= 1;
    if (timer <= 0) state = "deleting";
}
// --- DELETING ---
else if (state == "deleting")
{
    if (tick >= backspace_delay_frames)
    {
        tick = 0;

        var len = string_length(typed_text);
        if (len > 0)
        {
            typed_text = string_copy(typed_text, 1, len - 1);
        }
        else
        {
            state = "pause_delete";
            timer = pause_after_delete;
        }
    }
}
// --- PAUSE AFTER DELETE ---
else if (state == "pause_delete")
{
    timer -= 1;
    if (timer <= 0)
    {
        story_index += 1;

        if (story_index >= array_length(story_lines))
        {
            if (loop_intro)
            {
                story_index = 0;
            }
            else
            {
                intro_done = true;
                show_press_space = true;
                exit;
            }
        }

        char_pos = 1;
        state = "typing";
    }
}
