extends Node2D

@export var level_number = 3
@onready var respawn = %Respawn3

func _process(delta: float) -> void:
	$Snow2.set_intensity(GameManager.cat_position/$SnowIntensiy.position.x)
