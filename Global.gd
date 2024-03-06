extends Node2D

var money = 0: 
	set(val):
		money = val
		if Player != null:
			Player.updateMoney()
	get:
		return money
var health: 
	set(val):
		health = val
		if Player != null:
			Player.updateHealth()
	get:
		return health
		
func playerHurt():
	if Player != null && 'x' in health:
		var index = health.find('x')
		health = health.substr(0, index) + health.substr(index + 1, health.length() - index - 1)
		Player.updateHealth()
		Player.hurt()
	else:
		get_tree().change_scene_to_file("res://escenas/menu/menu_lost.tscn")
var Player
