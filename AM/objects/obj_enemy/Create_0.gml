enm_strct = 
{
	placeholder:
	{
		sprite_index: spr_enemy_placeholder,
		enemy_max_hp: 100,
		enemy_attack: 50,
		enemy_defense:20
	}
}

sprite_index = enm_strct.global.enemy.sprite_index
global.enemy_attack = enm_strct.(global.enemy).enemy_attack

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
