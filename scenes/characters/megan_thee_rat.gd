extends CharacterBody2D

var player_in_area: bool = false

func _on_chat_detection_body_entered(body):
	if body.has_method("player"):
		print("player has entered")
		player_in_area = true


func _on_chat_detection_body_exited(body):
	if body.has_method("player"):
		print("player has exited")
		player_in_area = false
		
func _process(delta):
	if player_in_area:
		if Input.is_action_just_pressed("interact"):
			Dialogic.start("meganTalking")
		if Input.is_action_just_pressed("interact") && Global.catAmt == 1:
			Dialogic.start("meganExchange")
			


