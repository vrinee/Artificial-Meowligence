if global.turn = false {
	var action = global.enemy_pattern[global.pattern_index]
	if action = 0{
		enemy_attack()
		
	}else if action = 1{
		enemy_defend()
	}else if action = 2{
		enemy_drain()
	}
	var array_size = array_length(global.enemy_pattern)
	if global.pattern_index < array_size - 1{
		global.pattern_index += 1
	}
	else{
		global.pattern_index = 0
	}
	global.turn = 1

}