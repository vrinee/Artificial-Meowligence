if global.enemy_hp <= 0 or global.player_hp <= 0 {
	global.interactable = 0
	if global.enemy_hp <= 0{
		global.win_state = 1
		for(var i = 0; i < array_length(global.enemys_won); i ++){
			if(global.enemys_won[i][0] == global.enemy_name){
				global.enemys_won[i][1] = 1
			}
		}
		if(gameOverSound){
			audio_play_sound(yay_snd,0,false)
			gameOverSound = false
		}
	}else{
		
		global.win_state = 0
		if(gameOverSound){
			audio_play_sound(perdeu_snd,0,false)
			gameOverSound = false
		}
	}
	if(keyboard_check_pressed(ord("G"))){
			room_goto(global.Croom)
		}
	ended = 1
}

if global.turn{
	if global.energy <= 0{
		global.energy = global.max_energy
		global.turn = 0
	}
} 




