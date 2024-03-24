if global.turn = false {
	global.player_active_defense -= global.enemy_attack
	if global.player_active_defense < 0{
		global.player_hp += global.player_active_defense			
	}
	global.turn = 1
	global.player_active_defense = 0
}