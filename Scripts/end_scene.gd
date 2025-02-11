extends Node



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$CanvasLayer/Score_Number.text = str(GameManager.score)
	$CanvasLayer/Coin_Amount.text = str(GameManager.coins)
