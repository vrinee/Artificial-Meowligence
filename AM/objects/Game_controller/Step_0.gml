if (keyboard_check_released(vk_f11)){
	if window_get_fullscreen()
    {
		window_enable_borderless_fullscreen(false)
        window_set_fullscreen(false);
    }
    else
    {
		window_enable_borderless_fullscreen(true)
        window_set_fullscreen(true);
    }
}

if (window_get_fullscreen() ){
	bars = 1
	var _height = window_get_height()
	var _width = window_get_width()
	xscale = _width/480
	yscale = _height/360
	display_set_gui_maximize((_width / 480),(_height / 360))
	
}
else{
	bars = 0
	display_set_gui_maximize(-1,-1)
}


//if (keyboard_check_released(vk_enter)){
//	room_goto(Combate_WIP)
//	}

//if (keyboard_check_released(vk_divide)){
//	room_goto(level07)
//	global.player_x = 50
//	global.player_y = 90
//	}

if (room != Combate_WIP){
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
}
// Dialogo //

if instance_exists(obj_dialogo) {
	global.dialog = true;
}

if(keyboard_check(vk_multiply)){
	room_goto(rm1)
}




