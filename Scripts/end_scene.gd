extends Node



func _ready() -> void:
	$CanvasLayer/Score_Number.text = str(GameManager.score)
	$CanvasLayer/Coin_Amount.text = str(GameManager.coins)
