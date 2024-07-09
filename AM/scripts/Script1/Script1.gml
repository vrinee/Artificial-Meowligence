function scr_textos(){
	switch npc_nome {
		case "Gabe":
			texto[0] = "Passou de duas linhas eu não leio. Brian eu não tanko mias esse game maker mds >>>:"
			texto[1] = "Alguém deleta esse ppo, eu nn ageunto mais sa pora"
			texto[2] = "Se eu nn ganha um 10 nesse jogo eu vou explodir o ifc"
		break;
		
		case "Brian":
			texto[0] = "Eu não sei mais oq escrever nesse texto"
			texto[1] = "Ahhhhhhhh eu não aguento mais sa pora"
			texto[2] = "brigadão mor e tu nem se fala veyrr"
			texto[3] = "Odeio a é£çiä"
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