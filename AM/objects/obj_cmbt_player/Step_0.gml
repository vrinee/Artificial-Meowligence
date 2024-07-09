if global.turn {
	if global.energy <= 0 {
		global.energy = global.max_energy
		global.turn = 0
	}
}