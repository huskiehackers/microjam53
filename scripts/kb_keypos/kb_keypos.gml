/// kb_keypos(_key) -> {x, y, ok}
function kb_keypos(_key)
{
    var key = string_upper(_key);

    var row0 = "QWERTYUIOP";
    var row1 = "ASDFGHJKL";
    var row2 = "ZXCVBNM";

    var off0 = 0.0;
    var off1 = 0.5;
    var off2 = 1.0;

    if (key == " " || key == "SPACE") return { x: 4.0,  y: 3, ok: true };
    if (key == "BKSP")                return { x: 10.5, y: 0, ok: true };

    var i = string_pos(key, row0);
    if (i > 0) return { x: (i-1) + off0, y: 0, ok: true };

    i = string_pos(key, row1);
    if (i > 0) return { x: (i-1) + off1, y: 1, ok: true };

    i = string_pos(key, row2);
    if (i > 0) return { x: (i-1) + off2, y: 2, ok: true };

    return { x: 0, y: 0, ok: false };
}
