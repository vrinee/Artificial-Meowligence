function scr_textos(){
	switch npc_nome {
		case "Gabe":
		texto[0] = "Eu acho incrível o que estão fazendo com as IAs"
		texto[1] = "Você já viu como elas estão sendo usadas para diagnósticos médicos?"
		texto[2] = "Salvando vidas! O futuro é cheio de possibilidades"
		break;
			
		case "João":
		texto[0] = "As IAs são uma oportunidade incrível para negócios"
		texto[1] = "Elas agilizam processos, reduzem custos e aumentam a eficiência"
		texto[2] = "Minha empresa nunca esteve tão lucrativa graças a elas"
		break;
		
		case "Lucas": 
		texto[0] = "Eu entendo que as IAs podem ajudar, mas até que ponto elas devem decidir por nós?"	
		texto[1] = "Já vi empresas usarem IA para escolher quem é contratado ou demitido" 
		texto[2] = "Quem garante que essas decisões são realmente justas e imparciais?"
		break;

		case "Mariana":
		texto[0] = "Eu não confio nessas coisas"
		texto[1] = "Uma máquina tomando decisões? E se errar?"
		texto[2] = "Estamos dando poder demais a algo que nem entende o que é certo ou errado"
		break;
		
		case "Rose":
		texto[0] = "Automatizar tudo? E nós, onde vamos trabalhar?"
		texto[1] = "As fábricas estão demitindo por causa dessas máquinas"
		texto[2] = "Não é justo... As pessoas estão perdendo seus empregos"
		break;
		
		case "Sofia":
		texto[0] = "Eu sempre achei que a arte era algo humano"
		texto[1] = "Mas agora tem IA fazendo músicas, pinturas e até filmes"
	    texto[2] = "Será que a criatividade humana está sendo substituída também?"
		break;

		case "Pedro":
		texto[0] = "Eu ouvi dizer que usam IAs para prever desastres naturais"
		texto[1] = "Se isso for verdade, pode salvar muitas vidas"
		texto[2] = "Mas como podemos saber se essas previsões são realmente confiáveis?"
		break;
		
		case "Killua":
		texto[0] = "As IAs são poderosas, mas precisam ser usadas com responsabilidade"
		texto[1] = "Já pensou se deixarmos uma IA tomar decisões políticas ou de justiça?"
		texto[2] = "Quem sabe se os cientistas não estão manipulando elas"
		break;

		case "Fernando":
		texto[0] = "Ei porque você não entra nessa pizzaria?"
		texto[1] = "Eu ouvi dizer que tem um portal para um laboratório"
		texto[2] = "E lá você pode derrotar todas as IA’s"
		break;
		
		
		case "Mario":
		texto[0] = "Eu vejo um potencial imenso nas IAs"
		texto[1] = "Imagine um mundo onde não cometemos erros por descuido"
		texto[2] = "As IAs podem proporcionar isso e muito mais"
		break;




		
		case "Enemy":
		var dert = 0;
			for(var i = 0; i < array_length(global.enemys_won);i++) {
				if(global.enemys_won[i][0] == enemy_name and global.enemys_won[i][1] == 1){
					dert = 1;
				}
				
			}
			if(dert){
				texto[0] = "Tu me ganhou D::"
			}else{
				global.enemy_name = enemy_name
				global.Croom = room
				room_goto(Combate_WIP)
			
			}
			
			
			
		break;
		

		
		case "Passar":
			
			switch room_next(room){
				case 3://level 02
					global.player_x = 200
					global.player_y = 200
					room_goto(level02)
					break
			    case 4://level 03
					global.player_x = 160
					global.player_y = 928
					break
			}
				//room_goto_next();
	}
}