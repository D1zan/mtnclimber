extends Area2D


func _on_body_entered(body: Node2D) -> void:
	print("hi")
	if body.is_in_group("cat"):
		var current_scene_file = get_tree().current_scene.scene_file_path
		print(current_scene_file)
		var next_level_number = current_scene_file.to_int() + 2
		print(next_level_number)
		var next_level_path = "res://Scenes/level_" + str(next_level_number) + ".tscn"
		print(next_level_path)
		get_tree().change_scene_to_file(next_level_path)
