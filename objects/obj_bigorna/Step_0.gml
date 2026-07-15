var arma = instance_place(x, y, obj_arma);

if (arma != noone && arma.estadoc == "quente" && arma.estado == "")
{
    mostrar_texto = true;

    if (keyboard_check_pressed(ord("X")))
    {
        obj_minigame.mostrar = true;
    }
}
else
{
    mostrar_texto = false;
}