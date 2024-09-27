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
		
		case "bar":
		texto[0] = "Vejo que consegui chegar até aqui"
		texto[1] = "Ainda temos muito mais IAs para derrotar"
		texto[2] = "Siga em frente para o laboratorio de onde elas vieram"
		break;
		
		case "recepcionista": 
        texto[0] = "Você veio visitar o laboratório?" 
        texto[1] = "É só subir o elevador que você chega lá."           
        break;
		
		case "cientista1": 
        texto[0] = "É importante lembrar que a IA não pensa como a gente" 
        texto[1] = "Ela só processa informações e encontra padrões de forma eficiente"           
        break;
		
		case "cientista2":
        texto[0] = "Estamos em um ponto crucial da evolução das IAs."
        texto[1] = "O nível de autonomia que conseguimos alcançar nas últimas semanas é impressionante."
        texto[2] = "mas ainda há questões éticas que precisamos considerar."
        break;
		
		case "cientista3":
        texto[0] = "Sim, autonomia é uma faca de dois gumes. "
        texto[1] = "Quanto mais inteligência damos, mais precisamos garantir que esses sistemas entendam limites."
        texto[2] = "Já passamos dos algoritmos que apenas seguem ordens... Agora eles aprendem, tomam decisões."
        break;
		
		case "cientista4":
        texto[0] = " A nossa preocupação maior não é mais só sobre o que eles podem fazer, mas como vão interpretar o que pedimos."
        texto[1] = "A complexidade da linguagem é algo que as máquinas ainda não dominam completamente, mesmo que os avanços sejam gigantescos."
        break;
		
		case "arrow":
		texto[0] = enemy_name
		break;

		
		case "Enemy":
		var dert = 0;
			for(var i = 0; i < array_length(global.enemys_won);i++) {
				if(global.enemys_won[i][0] == enemy_name and global.enemys_won[i][1] == 1){
					dert = 1;
				}
				
			}
			if(dert and enemy_name == "BOSS"){
				texto[0] = "Fui derrotado XD"
				texto[1] = "Isso não estava nos meus calculos >:("
				texto[2] = "Razao para existir falhada T_T"
				break
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
		break;
		default:
			texto[0] = "..."
	}
}