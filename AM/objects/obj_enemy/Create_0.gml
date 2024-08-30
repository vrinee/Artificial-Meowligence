global.enemy_max_hp = max_hp
global.enemy_attack = atack
global.enemy_defense = defense
global.enemy_hp = global.enemy_max_hp
global.enemy_pattern = pattern

healthbar_width = 58*3
healthbar_height = 27

healthbar_x = x //- sprite_width/2 - 10
healthbar_y =  y- 10// + sprite_height/2

flash = false
 
global.enemy_pattern = pattern
 
 function enemy_defend() {
	global.enemy_active_defense = global.enemy_defense
	global.player_active_defense = 0
	if(!instance_exists(obj_shield_enemy)){
		alarm[1] = 30
	}
	instance_create_layer(obj_enemy.x + obj_enemy.sprite_width,obj_enemy.y + obj_enemy.sprite_height,"Instances_1",obj_shield_create)
	audio_play_sound(shield_snd,10,false)
 }
 
 function enemy_attack() {
	global.player_active_defense -= global.enemy_attack
	

	if global.player_active_defense < 0{
		if(instance_exists(obj_shield)){
			instance_create_layer(obj_cmbt_player.x + obj_cmbt_player.sprite_width/2,obj_cmbt_player.y + obj_cmbt_player.sprite_height/2,"Instances_1",obj_shield_break)
			audio_play_sound(pipe_snd,10,false)
		}
		instance_destroy(obj_shield)
		global.player_hp += global.player_active_defense
		global.dmg = global.player_active_defense
		instance_create_layer(obj_cmbt_player.healthbar_x,obj_cmbt_player.healthbar_y,"Instances_1",obj_dmg_text)
		instance_create_layer(obj_cmbt_player.x + obj_cmbt_player.sprite_width/2,obj_cmbt_player.y + obj_cmbt_player.sprite_height/2,"Instances_1",obj_enemy_slash)
		audio_play_sound(sword_snd,10,false)
		obj_cmbt_player.flash = true
		obj_cmbt_player.alarm[0] = 5
		if global.player_hp < 0 {
			global.player_hp = 0
		}
	}else if(instance_exists(obj_shield)){
	instance_create_layer(obj_enemy.x + obj_enemy.sprite_width/2,obj_enemy.y + obj_enemy.sprite_height/2,"Instances_1",obj_shield_create)
	audio_play_sound(shield_snd,10,false)
	}
	
	global.player_active_defense = 0
 }
 
 function enemy_drain() {
	global.energy -= 1
 }
