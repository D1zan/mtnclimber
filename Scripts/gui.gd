extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CoinValue.position.x = get_viewport().size.x-150
	$ScoreValue.position.x = get_viewport().size.x-150
	$AnimatedSprite2D.position.x = get_viewport().size.x-20

	
	
