function get_random_room_type() {
    var room_types = ["treasure", "merchant"];
    return room_types[irandom(array_length(room_types) - 1)];
}