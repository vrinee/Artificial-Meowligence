if flash == true
{
gpu_set_fog(true, c_white, 0, 1000)
draw_self()
gpu_set_fog(false, c_white,0,1000)

}
else
{
draw_self()
}


draw_sprite(spr_lifebar_bg,0,healthbar_x,healthbar_y)
draw_sprite_stretched(spr_lifebar_session_enemy,0,healthbar_x,healthbar_y,(global.enemy_hp/global.enemy_max_hp)*healthbar_width,3*3)
draw_sprite(spr_lifebar,0,healthbar_x,healthbar_y)
draw_sprite(spr_lifebar_circuit,0,healthbar_x,healthbar_y)