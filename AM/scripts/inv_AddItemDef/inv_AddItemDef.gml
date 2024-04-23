///@desc Adicona uma definição ao item
///@param type Type
///@param spriteIndex Index do Sprite
///@param amout Quantidade
///@param script Script

var _typeOfItem = argument0;
var _sprite = argument1;
var _name = argument2;
var _amount = argument3;
var _script = argument4

itemDefinitions[_typeOfItem, ItemProperties.sprite] = _sprite;
itemDefinitions[_typeOfItem, ItemProperties.name] = _name;
itemDefinitions[_typeOfItem, ItemProperties.amount] = _amonut;
itemDefinitions[_typeOfItem, ItemProperties.useScript] = _useScript;