global.pontos = 0;
global.mostrar = false;
global.porta = Room1;

cam = view_camera[0];

cam_w = 192*5;
cam_h = 192*5;

margem_x = 48*5;
margem_y = 48*5;

global.pedido = "";
global.dinheiro = 0;

text = [
    "You are a renowned blacksmith, forging weapons for many kingdoms.",
    "Interact with the chest to collect new ores.",
    "Heat the ore in the furnace.",
    "Forge it on the anvil.",
    "Finally, cool it down in the bucket.",
    "Deliver the finished weapon where the arrow points."
];

i = 0;

tempo = 4; // segundos entre cada mensagem
tempop = 0;

global.dialogo = true;

global.mos1 = false;
global.mos2 = false;
global.mos3 = false;
global.mos4 = false;
global.mos5 = false;

global.ini = false;

pedido = noone;
global.forja = false;
global.ok = false;

global.capacidade = 1;
global.preco = 100;

global.mochila = [];
global.arma_mao = noone;