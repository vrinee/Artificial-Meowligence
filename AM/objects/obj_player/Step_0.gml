// Movimentação do personagem
if (!global.dialogo) {
    var subir = keyboard_check(ord("W"));
    var baixo = keyboard_check(ord("S"));
    var direita = keyboard_check(ord("D"));
    var esquerda = keyboard_check(ord("A"));

    var tecla = direita - esquerda != 0 or baixo - subir != 0;

    dir = point_direction(0, 0, direita - esquerda, baixo - subir);

    velh = lengthdir_x(velc * tecla, dir);
    velv = lengthdir_y(velc * tecla, dir);

    // colisão parede
    if (place_meeting(x + velh, y, obj_collision)) {
        while (!place_meeting(x + sign(velh), y, obj_collision)) {
            x = x + sign(velh);
        }
        velh = 0;
    }

    // colisão npc
    if (place_meeting(x + velh, y, obj_collision)) {
        while (!place_meeting(x + sign(velh), y, obj_collision)) {
            x = x + sign(velh);
        }
        velh = 0;
    }

    x = x + velh;

    if (place_meeting(x, y + velv, obj_collision)) {
        while (!place_meeting(x, y + sign(velv), obj_collision)) {
            y = y + sign(velv);
        }
        velv = 0;
    }

    if (place_meeting(x, y + velv, obj_collision)) {
        while (!place_meeting(x, y + sign(velv), obj_collision)) {
            y = y + sign(velv);
        }
        velv = 0;
    }

    y = y + velv;

    // animações do player
    if (velh != 0 or velv != 0) {
        movendo = 1;
    } else {
        movendo = 0;
    }

    if (direita) {
        image_xscale = -1;
        lado = 2;
    }
    if (esquerda) {
        image_xscale = 1;
        lado = 3;
    }
    if (baixo) lado = 0;
    if (subir) lado = 1;

    sprite_index = sprite[movendo][lado];
}

// Diálogo
if (distance_to_object(obj_par_npcs) <= 10) {
    if (keyboard_check_pressed(ord("F")) && !global.dialogo) {
        var _npc = instance_nearest(x, y, obj_par_npcs);
        var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
        _dialogo.npc_nome = _npc.nome;
		_dialogo.enemy_name = _npc.enemy;
        global.dialogo = true; // Ativar o estado de diálogo
    }
}

