global.enemy_index = 0
global.player_max_hp = 100
global.player_hp = global.player_max_hp
global.player_damage = 20
global.player_damage_mult = 1
global.player_defense = 7.5
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
	["placeholder",0],
	["enemy_one",0],
	["enemy_two",0],
	["enemy_three",0],
	["enemy_four",0],
	["enemy_five",0],
	["enemy_six",0],
	["enemy_seven",0],
	["enemy_eight",0],
	["enemy_nine",0],
	["enemy_ten",0],
	["enemy_eleven",0],
	["enemy_twelve",0],
	["BOSS",0]
	
]
global.dmg = 0
global.interactable = 1
global.enemy_pattern = [0,0,1,0,1]
global.pattern_index = 1

global.star = true

global.Enemy = function() constructor{
name = "Default"
max_hp = 300
sprite_index = spr_cmbt_enemy_placeholder
atack = 30
defense = 30
pattern = [0,0,1,0,1]

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
   
static SetPattern = function(_value) {
      pattern = _value;
      return self;
   }
   
}


