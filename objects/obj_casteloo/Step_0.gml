if (place_meeting(x, y, obj_player))
{
    mostrar_texto = true;

    if (keyboard_check_pressed(ord("X")))
    {
        var vendidos = 0;
        var nova_mochila = [];

        // mochila
        for (var i = 0; i < array_length(global.mochila); i++)
        {
            var item = global.mochila[i];

            if (item == "ovo")
            {
                vendidos++;
            }
            else
            {
                array_push(nova_mochila, item);
            }
        }

        global.mochila = nova_mochila;

        // arma na mão
        if (global.arma_mao != noone)
        {
            if (global.arma_mao.destino == "ovo")
            {
                vendidos++;

                with (global.arma_mao)
                {
                    instance_destroy();
					global.forja = false;
                }

                global.arma_mao = noone;
            }
        }

        if (vendidos > 0)
        {
            global.dinheiro += vendidos * global.preco;

            audio_play_sound(sou_venda, 1, false);
        }
    }
}
else
{
    mostrar_texto = false;
}