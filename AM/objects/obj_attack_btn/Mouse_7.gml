if global.turn == 1 and global.interactable == 1 {
	global.enemy_active_defense -= global.player_damage
	if global.enemy_active_defense < 0{
		if (instance_exists(obj_shield_enemy)){
			instance_create_layer(obj_enemy.x + obj_enemy.sprite_width,obj_enemy.y + obj_enemy.sprite_height,"Instances_1",obj_shield_break)
			audio_play_sound(pipe_snd,10,false)
		}
		instance_destroy(obj_shield_enemy)
		global.enemy_hp += global.enemy_active_defense
		global.dmg = global.enemy_active_defense
		instance_create_layer(obj_enemy.healthbar_x,obj_enemy.healthbar_y,"Instances_1",obj_dmg_text)
		instance_create_layer(obj_enemy.x + obj_enemy.sprite_width/2,obj_enemy.y + obj_enemy.sprite_height/2,"Instances_1",obj_player_slash)
		audio_play_sound(slash_snd,10,false)
		obj_enemy.flash = true
		obj_enemy.alarm[0] = 5
	}else if (instance_exists(obj_shield_enemy)){
	instance_create_layer(obj_cmbt_player.x + obj_cmbt_player.sprite_width/2,obj_cmbt_player.y + obj_cmbt_player.sprite_height/2,"Instances_1",obj_shield_create)
	audio_play_sound(shield_snd,10,false)
	}
	global.turn = 1
	global.enemy_active_defense = 0
	global.energy -= 1
}

image_index = 0