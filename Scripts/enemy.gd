extends CharacterBody2D

const SPEED = 300
var movingRight = 1
var canSwitch = true
@onready var respawn = %respawn

func _physics_process(delta: float) -> void:
	if movingRight < 0:
		velocity.x = SPEED * -1.0
		$RayCast2D.target_position = Vector2(-270,250)
		$AnimatedSprite2D.flip_h = true
	else:
		velocity.x = SPEED * 1.0
		$RayCast2D.target_position = Vector2(270,250)
		$AnimatedSprite2D.flip_h = false
	move_and_slide()
	
	#something(player_in_contact)






func _on_bug_death_area_entered(area: Area2D) -> void:
	movingRight *= -1
	#print(movingRight)



func _on_die_bug_body_entered(body: Node2D) -> void:
		if body.name == "Cat":
			if body.fighting:
				print("fight Enemy")
				GameManager.score += 1000
				queue_free()
			else:
				body.damage(10)
				position = (position - 10).position
