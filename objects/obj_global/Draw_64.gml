draw_set_font(Font1);

// Dinheiro
draw_set_color(c_white);
draw_text(4, 4, "$ " + string(global.dinheiro));

if (global.dialogo)
{
    var caixa_x1 = 4;
    var caixa_y1 = 136;

    var caixa_x2 = 188;
    var caixa_y2 = 188;

    // Fundo da caixa
    draw_set_color(c_black);
    draw_rectangle(caixa_x1, caixa_y1, caixa_x2, caixa_y2, false);

    // Texto
    draw_set_color(c_white);
    draw_text_ext(
        caixa_x1 + 6,
        caixa_y1 + 6,
        text[i],
        -1,
        (caixa_x2 - caixa_x1) - 12
    );

    caixa = true;
}
else
{
    caixa = false;
}