

// F2 – Heal player to full
if (keyboard_check_pressed(vk_f2)) {
    global.hp = 200;
}

// F3 – Add +3 MP
if (keyboard_check_pressed(vk_f3)) {
    global.mp += 3;
}

// F4 – Double current HP
if (keyboard_check_pressed(vk_f4)) {
    global.hp *= 2;
}

// F5 – Set HP to 1 (hard-mode cheat)
if (keyboard_check_pressed(vk_f5)) {
    global.hp = 1;
}

if global.hp > 200
{
	global.hp = 200
}