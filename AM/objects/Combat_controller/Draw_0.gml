draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if(ended == 1){
	
	if(global.win_state == 0){
		draw_sprite(spr_gameover,0,0,0)
	}else{
		draw_sprite(spr_gamewon,0,0,0)
	}
	
}
