enum enemy_types {
	Placeholder,
	IA_realista,
	IA_tutorial,
	Enemy_one,
	Enemy_two,
	Enemy_three,
	Enemy_four,
	Enemy_five,
	Enemy_six
	
}
global.enemies = []
global.turn = 1
global.interactable = 1
ended = 0

switch global.enemy_name{
	case "placeholder":
		global.enemies[enemy_types.Placeholder] = new global.Enemy().SetName("placeholder")
		
		var placeholder_data = global.enemies[enemy_types.Placeholder]
		instance_create_layer(288,30,"Instances",obj_enemy,placeholder_data)
		break
	case "enemy_one":
		global.enemies[enemy_types.Enemy_one] = new global.Enemy().SetName("enemy_one").SetSprite(spr_enemy_one).SetMaxHp(400).SetPattern([0,2,1,0])
		
		var enemy_one_data = global.enemies[enemy_types.Enemy_one]
		instance_create_layer(288,30,"Instances",obj_enemy,enemy_one_data)
		break
	case "enemy_two":
		global.enemies[enemy_types.Enemy_two] = new global.Enemy().SetName("enemy_two").SetSprite(spr_enemy_two).SetMaxHp(250).SetPattern([2,1,2,0]).SetAttack(75)
		
		var enemy_two_data = global.enemies[enemy_types.Enemy_two]
		instance_create_layer(288,30,"Instances",obj_enemy,enemy_two_data)
		break
	case "enemy_three":
		global.enemies[enemy_types.Enemy_three] = new global.Enemy().SetName("enemy_three").SetSprite(spr_enemy_three).SetMaxHp(100).SetPattern([0,0,0,0]).SetAttack(75)
		
		var enemy_three_data = global.enemies[enemy_types.Enemy_three]
		instance_create_layer(288,30,"Instances",obj_enemy,enemy_three_data)
		break
	case "enemy_four":
		global.enemies[enemy_types.Enemy_four] = new global.Enemy().SetName("enemy_four").SetSprite(spr_enemy_one).SetMaxHp(300).SetPattern([1,1,1,1]).SetDefense(30)
		
		var enemy_four_data = global.enemies[enemy_types.Enemy_four]
		instance_create_layer(288,30,"Instances",obj_enemy,enemy_four_data)
		break
	case "enemy_five":
		global.enemies[enemy_types.Enemy_five] = new global.Enemy().SetName("enemy_five").SetSprite(spr_enemy_two).SetMaxHp(125).SetPattern([2,0,2,0]).SetAttack(30)
		
		var enemy_five_data = global.enemies[enemy_types.Enemy_five]
		instance_create_layer(288,30,"Instances",obj_enemy,enemy_five_data)
		break
	case "enemy_six":
		global.enemies[enemy_types.Enemy_six] = new global.Enemy().SetName("enemy_six").SetSprite(spr_enemy_three).SetMaxHp(150).SetPattern([1,0,1,0]).SetAttack(24)
		
		var enemy_six_data = global.enemies[enemy_types.Enemy_six]
		instance_create_layer(288,30,"Instances",obj_enemy,enemy_six_data)
		break

	
}
audio_stop_all()
audio_play_sound(cmbt_snd,11,true)