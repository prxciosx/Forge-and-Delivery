// Verifica se tem pedido
if (global.pedido != ""){
    apont = true;
} else{
    apont = false;
}

// Só processa se tiver pedido e na sala certa
if (room == Room2 && apont && global.ok){
    // Define o alvo baseado no pedido
    switch (global.pedido){
        case "pontudo":
            xx = obj_castelop.x;
            yy = obj_castelop.y;
        break;
        case "ovni":
            xx = obj_casteloa.x;
            yy = obj_casteloa.y;
        break;
        case "ovo":
            xx = obj_casteloo.x;
            yy = obj_casteloo.y;
        break;
        case "triangulo":
            xx = obj_castelot.x;
            yy = obj_castelot.y;
        break;
    }
    
    // Calcula o ângulo do player até o alvo
    var angulo_alvo = point_direction(obj_player.x, obj_player.y, xx, yy);
    
    // Posiciona a seta em volta do player (distância fixa)
    var distancia = 50; // distância da seta em relação ao player
    x = obj_player.x + lengthdir_x(distancia, angulo_alvo);
    y = obj_player.y + lengthdir_y(distancia, angulo_alvo);
    
    // Rotaciona a seta para apontar pro alvo
    var angulo_ponta = point_direction(x, y, xx, yy);
    image_angle = angulo_ponta - 90; // se a ponta do sprite for pra cima
}

// fallback se não tiver pedido
if (global.pedido == ""){
    x = obj_player.x;
    y = obj_player.y;
}