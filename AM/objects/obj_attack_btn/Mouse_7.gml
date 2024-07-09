if global.turn == 1 {
	global.enemy_active_defense -= global.player_damage
	if global.enemy_active_defense < 0{
		global.enemy_hp += global.enemy_active_defense
		global.dmg = global.enemy_active_defense
		instance_create_layer(obj_enemy.healthbar_x,obj_enemy.healthbar_y,"Instances_1",obj_dmg_text)
		obj_enemy.flash = true
		obj_enemy.alarm[0] = 5
	}
	global.turn = 1
	global.enemy_active_defense = 0
	global.energy -= 1
}

image_index = 0