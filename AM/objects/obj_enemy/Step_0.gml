if global.turn = false {
	if global.enemy_pattern[global.pattern_index] = false{
		enemy_attack()
	}else{
		enemy_defend()
	}
	var array_size = array_length(global.enemy_pattern)
	if global.pattern_index < array_size - 1
		global.pattern_index += 1
	else
		global.pattern_index = 0
	global.turn = 1
//oi

}