enum enemy_types {
	Placeholder,
	IA_realista,
	IA_tutorial
}
global.enemies = []

switch global.enemy_name{
	case "placeholder":
		global.enemies[enemy_types.Placeholder] = new global.Enemy()
			.SetName("placeholder")
		show_debug_message(global.enemies[enemy_types.Placeholder].won)
		var placeholder_data = global.enemies[enemy_types.Placeholder]
		instance_create_layer(288,30,"Instances",obj_enemy,placeholder_data)
	break
	
}
global.enemies[enemy_types.Placeholder] = new global.Enemy()
	.SetName("placeholder")

var placeholder_data = global.enemies[enemy_types.Placeholder]
instance_create_layer(288,30,"Instances",obj_enemy,placeholder_data)

