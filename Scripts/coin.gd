extends AnimatedSprite2D



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group('cat'):
		GameManager.coins += 1
		GameManager.score += 100
		queue_free()
