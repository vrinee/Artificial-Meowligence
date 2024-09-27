velh = 0;
velv = 0;
dir = 0;
velc =2;

//declarando maatriz de sprite

sprite[0][0] = spr_player_standing_frt
sprite[0][1] = spr_player_standing_bhd
sprite[0][2] = spr_player_standing_side //direita
sprite[0][3] = spr_player_standing_side

sprite[1][0] = spr_player_walkingfront
sprite[1][1] = spr_player_walkingbehind
sprite[1][2] = spr_player_walkingside
sprite[1][3] = spr_player_walkingside

movendo = 0
lado = 0

x = global.player_x
y = global.player_y

canPlay = true
if(global.star == true){
	global.star = false
	instance_create_layer(480/2,360/2,"Dialogo",obj_tuto)
}
