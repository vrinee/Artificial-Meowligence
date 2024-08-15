if global.turn == 1 and global.interactable == 1 {
	global.player_active_defense += global.player_defense
	if(!instance_exists(obj_shield)){
		alarm[0] = 30
	}
	instance_create_layer(obj_cmbt_player.x + obj_cmbt_player.sprite_width/2,obj_cmbt_player.y + obj_cmbt_player.sprite_height/2,"Instances_1",obj_shield_create)
	audio_play_sound(shield_snd,10,false)
	global.enemy_active_defense = 0
	global.energy -=1 
}


image_index = 3