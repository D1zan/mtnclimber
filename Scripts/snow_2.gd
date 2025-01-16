extends Node2D
var lastPercent = 0
func set_intensity(percentage):
	#makes the snow amout increase every 20% so that it doesnt reset every frame
	if percentage > 0.2 + lastPercent:
		lastPercent = percentage
		$CPUParticles2D2.visible = percentage > 0.2
		$CPUParticles2D3.visible = percentage > 0.4
		$CPUParticles2D4.visible = percentage > 0.6
		$CPUParticles2D5.visible = percentage > 0.8
		
	
	
