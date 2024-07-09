function scr_textos(){
	switch npc_nome {
		case "Gabe":
			texto[0] = "Essas IA´s são muito legais..."
			texto[1] = "Usei uma para fazer um relatório no trabalho"
			texto[2] = "IA´s são incríveis!!"
		break;
		
		case "Brian":
			texto[1] = "Perdi meu emprego porque me substituiram no trabalho"
			texto[2] = "Eu odeio ás IA´s!!!!!!!!!"
		break;
		
		case "Enemy":
			if(global.enemys_won[0][1] == 1){
				texto[0] = "Tu me ganhou D:"
				break;
			}
			global.enemy_name = "placeholder"
			global.player_x = obj_player.x
			global.player_y = obj_player.y
			global.Croom = room 
			room_goto(Combate_WIP)
		break;
		case "Passar":
			if(room_next(room) != -1) {
				switch room_next(room){
					case 3://level 02
						global.player_x = 1756
						global.player_y = 154
						break
					case 4://level 03
						global.player_x = 160
						global.player_y = 928
						break
				}
				room_goto_next();
			}
	}
}