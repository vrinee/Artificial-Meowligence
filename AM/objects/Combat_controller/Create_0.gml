enum enemy_types {
	Placeholder,
	IA_realista,
	IA_tutorial,
	Enemy_one
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
		global.enemies[enemy_types.Enemy_one] = new global.Enemy().SetName("enemy_one").SetSprite(spr_enemy_one).SetMaxHp(1000).SetPattern([0,2,1,0])
		
		var enemy_one_data = global.enemies[enemy_types.Enemy_one]
		instance_create_layer(288,30,"Instances",obj_enemy,enemy_one_data)
		break
	
}
audio_stop_all()
audio_play_sound(cmbt_snd,11,true)