extends Control


func _ready():
	# Ensure the pause menu is hidden when the game starts
	visible = false

func resume():
	get_tree().paused = false
	visible = false  # Hide the menu after the animation finishes

func pause():
	visible = true  # Show the pause menu when pausing
	get_tree().paused = true
	

func _process(delta):
	if Input.is_action_just_pressed("Escape"):
		if get_tree().paused:
			resume()
		else:
			pause()

func _on_resume_pressed():
	resume()

func _on_main_menu_pressed() -> void:
	resume()
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")


func _on_quit_pressed():
	get_tree().quit()
