function sprite_clicked(_spr, _x, _y, _mx, _my) {
    var w = sprite_get_width(_spr);
    var h = sprite_get_height(_spr);

    return (_mx >= _x && _mx <= _x + w && _my >= _y && _my <= _y + h);
}
