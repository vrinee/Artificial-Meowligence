enum enemy_types {
	Placeholder,
	IA_realista,
	IA_tutorial
}
global.enemies = []
global.turn = 1
global.interactable = 1
ended = 0

switch global.enemy_name{
	case "placeholder":
		global.enemies[enemy_types.Placeholder] = new global.Enemy()
			.SetName("placeholder")
		var placeholder_data = global.enemies[enemy_types.Placeholder]
		instance_create_layer(288,30,"Instances",obj_enemy,placeholder_data)
	break
	
}

audio_play_sound(cmbt_snd,11,true)