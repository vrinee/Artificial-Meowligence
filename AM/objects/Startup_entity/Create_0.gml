global.enemy_index = 0
global.player_max_hp = 100
global.player_hp = global.player_max_hp
global.player_damage = 20
global.player_damage_mult = 1
global.player_defense = 10
global.player_defense_mult = 1
global.player_active_defense = 0
global.player_x = 160
global.player_y = 192
global.turn = 1
global.enemy_max_hp = 100
global.enemy_hp = 100
global.enemy_attack = 20
global.enemy_defense = 20
global.enemy_active_defense = 0
global.enemy_name = "placeholder"
global.Croom = rm1
global.enemys_won = [
	["placeholder",0]
]
global.dmg = 0

global.Enemy = function() constructor{
name = "Default"
max_hp = 100
sprite_index = spr_cmbt_enemy_placeholder
atack = 30
defense = 30

static SetName = function(_value) {
      name = _value;
      return self;
   }
   
static SetMaxHp = function(_value) {
      max_hp = _value;
      return self;
   }
   
static SetSprite = function(_value) {
      sprite_index = _value;
      return self;
   }
   
static SetAttack = function(_value) {
      atack = _value;
      return self;
   }
   
static SetDefense = function(_value) {
      defense = _value;
      return self;
   }
   
}

global.enemies[enemy_types.Placeholder] = new global.Enemy()
			.SetName("placeholder")

