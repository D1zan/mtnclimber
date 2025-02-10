extends Area2D


# Called when the node enters the scene tree for the first time.

#Changes the scene
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("cat"):
		get_tree().change_scene_to_file("res://Scenes/end_scene.tscn")
