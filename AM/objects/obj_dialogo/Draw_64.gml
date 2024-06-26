// Definir as dimensões desejadas
var _desired_width = 300;
var _desired_height = 180;

// Pegar a largura e altura da GUI atual
var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

// Calcular a posição do retângulo
var _xx = 90
var _yy = _gui_height - _desired_height - 5;

// Definir a cor do retângulo
var _color = c_black;

var _texto = string_copy(texto[pagina], 0, caractere);

draw_set_font(fnt_dialogo);

// Desenhar o retângulo
draw_rectangle_color(_xx, _yy, _xx + _desired_width, _yy + _desired_height, _color, _color, _color, _color, false);
draw_text_ext(_xx + 5, _yy + 5, _texto, 20, 300);
