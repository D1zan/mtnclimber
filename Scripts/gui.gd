extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$CoinValue.position.x = get_viewport().size.x-150
	$ScoreValue.position.x = get_viewport().size.x-150
	$AnimatedSprite2D.position.x = get_viewport().size.x-20
	$Control/MenuButton.position.x = get_viewport().size.x-80
	$Control/MenuButton.position.y = get_viewport().size.y-80
	
	
