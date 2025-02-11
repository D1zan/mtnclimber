extends Control


# Called when the node enters the scene tree for the first time.

<<<<<<< HEAD
=======

>>>>>>> a906df85427f484b1eb509176edb3649d6624de3
#func _process(delta: float) -> void:

#
func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")
	
func _on_options_button_pressed() -> void:
	pass # Replace with function body.
func _on_quit_button_pressed() -> void:
	
	get_tree().quit()
