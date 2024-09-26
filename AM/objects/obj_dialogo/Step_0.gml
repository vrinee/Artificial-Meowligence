if (!inicializar) {
scr_textos();    
    inicializar = true;
}

if (mouse_check_button_pressed(mb_left)) {
    if (caractere < string_length(texto)) {
        caractere = string_length(texto); 
    } else {
        alarm[0] = 1;
        caractere = 0;

        if (pagina < array_length(texto) - 1) {
            pagina++;
        } else {
            global.dialogo = false;
            instance_destroy();
        }
    }
}
