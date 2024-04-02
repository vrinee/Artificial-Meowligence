 global.enemy_max_hp = 100
 global.enemy_hp = 100
 global.enemy_attack = 20
 global.enemy_defense = 20
 global.enemy_active_defense = 0
 
 
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
