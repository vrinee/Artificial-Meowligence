
enum enemy_types {
	Placeholder,
	IA_realista,
	IA_tutorial
}
global.enemies = []
global.enemies[enemy_types.Placeholder] = new global.Enemy()
	.SetName("placeholder")

var _placeholder_data = global.enemies[enemy_types.Placeholder]
instance_create_layer(310,30,"Instances",obj_enemy,_placeholder_data)

global.fight_state = 0