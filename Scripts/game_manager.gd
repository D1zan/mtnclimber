extends Node


@export var coins = 0
@export var score = 0
var cat_position = 0
var health = 100

func _process(delta: float) -> void:
	$"GUI/CoinValue".text = str(coins)
	$"GUI/ScoreValue".text = str(score)
	$"GUI/Health".text = str(health)
	#print(progress)
