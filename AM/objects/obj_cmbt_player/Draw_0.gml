if flash == true
{
gpu_set_fog(true, c_white, 0,1000)
draw_self()
gpu_set_fog(false, c_white,0,1000)

}
else
{
draw_self()
}
//draw_text(10,10,string(global.player_hp) + "/" + string(global.player_max_hp))
//draw_text(10,20,string(global.energy) + "/" + string(global.max_energy))

draw_sprite(spr_lifebar_bg,0,healthbar_x,healthbar_y)
draw_sprite_stretched(spr_lifebar_session,0,healthbar_x,healthbar_y,(global.player_hp/global.player_max_hp)*healthbar_width,3*3)
draw_sprite(spr_lifebar,0,healthbar_x,healthbar_y)
draw_sprite(spr_lifebar_heart,0,healthbar_x,healthbar_y)

energy_X = 10
repeat(global.energy){
	draw_sprite(energia_02,0,energy_X,20)
	energy_X += sprite_get_width(energia_02)
}
