global.enemy_max_hp = max_hp
global.enemy_attack = atack
global.enemy_defense = defense
global.enemy_hp = global.enemy_max_hp
 
 global.enemy_pattern = [0,1,1,0,1]
 global.pattern_index = 1
 
 function enemy_defend() {
	global.enemy_active_defense = global.enemy_defense
	global.player_active_defense = 0
 }
 
 function enemy_attack() {
	global.player_active_defense -= global.enemy_attack
	

	if global.player_active_defense < 0{
		global.player_hp += global.player_active_defense
	}
	global.player_active_defense = 0
 }
