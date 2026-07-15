draw_set_font(Font1);

// Dinheiro
draw_set_color(c_white);
draw_text(4, 4, "$ " + string(global.dinheiro));

if (global.dialogo) {

    var caixa_x1 = 4 * 5;
    var caixa_y1 = 136 * 5;

    var caixa_x2 = 188 * 5;
    var caixa_y2 = 188 * 5;

    // Fundo da caixa
    draw_set_color(c_black);
    draw_rectangle(caixa_x1, caixa_y1, caixa_x2, caixa_y2, false);

    // Texto do diálogo
    draw_set_font(Font1);
    draw_set_color(c_white);

    draw_text_ext(
        caixa_x1 + 6,
        caixa_y1 + 6,
        text[i],
        -1,
        (caixa_x2 - caixa_x1) - 12
    );

    // ---------- Press [Enter] to skip ----------
    var texto_esq = "Press ";
    var texto_dir = " to skip";

    var largura_total =
        string_width(texto_esq) +
        sprite_get_width(spr_enter) +
        string_width(texto_dir);

    var instr_x = caixa_x2 - largura_total - 8;
    var instr_y = caixa_y2 - 32 - 8 - 30;

    // Press
    draw_text(instr_x, instr_y, texto_esq);

    // Ícone do Enter
    draw_sprite(
        spr_enter,
        0,
        instr_x + string_width(texto_esq),
        instr_y
    );

    // to skip
    draw_text(
        instr_x + string_width(texto_esq) + sprite_get_width(spr_enter),
        instr_y,
        texto_dir
    );

    caixa = true;
}
else {
    caixa = false;
}