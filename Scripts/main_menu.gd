extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
#func _process(delta: float) -> void:
	$ParallaxBackground/ParallaxLayer/Sprite2D.scale=get_viewport().size/120
#
func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")


func _on_options_button_pressed() -> void:
	pass # Replace with function body.



func _on_quit_button_pressed() -> void:
	get_tree().quit()
