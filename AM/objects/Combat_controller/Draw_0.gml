draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if(ended == 1){
	
	if(global.win_state == 0){
		draw_sprite(spr_gameover,0,0,0)
	}else{
		draw_sprite(game_over,0,0,0)
		draw_text_transformed(room_width/2,100,"Game Over!",2,2,0)
		draw_text(room_width/2,180,"Voce Ganhou!")
		draw_text(room_width/2,200,"Aperte G para continuar")
	}
	
}
