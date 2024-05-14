// Movimentação do personagem
var subir = keyboard_check(ord("W"));
var baixo = keyboard_check(ord("S"));
var direita = keyboard_check(ord("D"));
var esquerda = keyboard_check(ord("A"));

var tecla = direita - esquerda != 0 or baixo - subir != 0;

dir = point_direction(0,0,direita - esquerda,baixo - subir);

velh = lengthdir_x(velc * tecla,dir);
velv = lengthdir_y(velc * tecla,dir);


// colisão parede \\
if(place_meeting(x+velh,y,obj_wall)) {
    while(!place_meeting(x+sign(velh),y,obj_wall)) {
        x = x + sign(velh);
    }
    velh = 0;
}   

// colisão npc \\

if(place_meeting(x+velh,y,obj_npc01)) {
    while(!place_meeting(x+sign(velh),y,obj_npc01)) {
        x = x + sign(velh);
    }
    velh = 0;
}   

x = x + velh;



if(place_meeting(x,y+velv,obj_wall)) {
    while(!place_meeting(x,y+sign(velv),obj_wall)) {
        y = y + sign(velv);
    }
    velv = 0;
}

if(place_meeting(x,y+velv,obj_npc01)) {
    while(!place_meeting(x,y+sign(velv),obj_npc01)) {
        y = y + sign(velv);
    }
    velv = 0;
}


y = y + velv;

// animações do player

if(velh != 0 or velv != 0) {
	movendo = 1
} else {
	movendo = 0
}

if (direita) {
	image_xscale = -1
	lado = 2
}
if (esquerda) {
	image_xscale = 1
	lado = 3
}
if (baixo) lado = 0
if (subir) lado = 1

sprite_index = sprite[movendo][lado]
