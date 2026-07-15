draw_self();

if (mostrar_texto){
    draw_set_font(Font2);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_set_color(c_black);
    draw_text(x + 1, bbox_top - 4 + 1, "Press C to store it in your backpack.");

    draw_set_color(c_white);
    draw_text(x, bbox_top - 4, "Press C to store it in your backpack.");

    // Restaurar estados globais
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(-1);
    draw_set_color(c_white);
    draw_set_alpha(1);
}