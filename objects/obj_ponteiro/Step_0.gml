x = mouse_x
y = mouse_y;

impacto = false;

if (mouse_check_button_pressed(mb_left)) {
    image_speed = 1;
}

if (floor(image_index) == 3) {
    impacto = true;
}

if (image_index > 5) {
    image_speed = 0;
    image_index = 0;
}
depth = -1600