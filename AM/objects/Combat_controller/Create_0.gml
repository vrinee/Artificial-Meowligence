enum enemy_types {
	Placeholder,
	IA_realista,
	IA_tutorial,
	Enemy_one,
	Enemy_two,
	Enemy_three,
	Enemy_four,
	Enemy_five,
	Enemy_six,
	Enemy_seven,
	Enemy_eight,
	Enemy_nine,
	Enemy_ten,
	Enemy_eleven,
	Enemy_twelve,
	BOSS
	
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
	case "enemy_seven":
		global.enemies[enemy_types.Enemy_seven] = new global.Enemy().SetName("enemy_seven").SetSprite(spr_enemy_one).SetMaxHp(250).SetPattern([1,1,1,0]).SetAttack(24)
		
		var enemy_seven_data = global.enemies[enemy_types.Enemy_seven]
		instance_create_layer(288,30,"Instances",obj_enemy,enemy_seven_data)
		break
	case "enemy_eight":
		global.enemies[enemy_types.Enemy_eight] = new global.Enemy().SetName("enemy_eight").SetSprite(spr_enemy_two).SetMaxHp(200).SetPattern([0,0,0,1]).SetAttack(15)
		
		var enemy_eight_data = global.enemies[enemy_types.Enemy_eight]
		instance_create_layer(288,30,"Instances",obj_enemy,enemy_eight_data)
		break
	case "enemy_nine":
		global.enemies[enemy_types.Enemy_nine] = new global.Enemy().SetName("enemy_nine").SetSprite(spr_enemy_three).SetMaxHp(30).SetPattern([2,2,0,2]).SetAttack(25)
		
		var enemy_nine_data = global.enemies[enemy_types.Enemy_nine]
		instance_create_layer(288,30,"Instances",obj_enemy,enemy_nine_data)
		break
	case "enemy_ten":
		global.enemies[enemy_types.Enemy_ten] = new global.Enemy().SetName("enemy_ten").SetSprite(spr_enemy_one).SetMaxHp(450).SetPattern([2,1,2,1]).SetAttack(24)
		
		var enemy_ten_data = global.enemies[enemy_types.Enemy_ten]
		instance_create_layer(288,30,"Instances",obj_enemy,enemy_ten_data)
		break
	case "enemy_eleven":
		global.enemies[enemy_types.Enemy_eleven] = new global.Enemy().SetName("enemy_eleven").SetSprite(spr_enemy_two).SetMaxHp(150).SetPattern([2,0,0,0]).SetAttack(14)
		
		var enemy_eleven_data = global.enemies[enemy_types.Enemy_eleven]
		instance_create_layer(288,30,"Instances",obj_enemy,enemy_eleven_data)
		break
	case "enemy_twelve":
		global.enemies[enemy_types.Enemy_twelve] = new global.Enemy().SetName("enemy_twelve").SetSprite(spr_enemy_three).SetMaxHp(150).SetPattern([1,0,1,0]).SetAttack(24)
		
		var enemy_twelve_data = global.enemies[enemy_types.Enemy_twelve]
		instance_create_layer(288,30,"Instances",obj_enemy,enemy_twelve_data)
		break
	case "BOSS":
		global.enemies[enemy_types.BOSS] = new global.Enemy().SetName("BOSS").SetSprite(spr_boss_big).SetMaxHp(1000).SetPattern([2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0]).SetAttack(10)
		
		var enemy_BOSS_data = global.enemies[enemy_types.BOSS]
		instance_create_layer(288,30,"Instances",obj_enemy,enemy_BOSS_data)
		break

	
}
audio_stop_all()
audio_play_sound(cmbt_snd,11,true)

gameOverSound = true