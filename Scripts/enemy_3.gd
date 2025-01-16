extends CharacterBody2D


const SPEED = 300
var movingRight = 1
var canSwitch = true

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
	
	





func _on_bug_body_2_area_entered(area: Area2D) -> void:
	movingRight *= -1
	#print(movingRight)



func _on_bug_body_2_body_entered(body: Node2D) -> void:
	if body.name == "Cat":
			if body.fighting:
				print("fight Enemy")
				GameManager.score += 1000
				queue_free()
			else:
				body.damage(10)
