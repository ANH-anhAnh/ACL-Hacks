extends CharacterBody2D

var player_in_area: bool = false

func _on_detection_body_entered(body):
	if body.has_method("player"):
		player_in_area = true
		queue_free()
		Dialogic.start("catCollect")
		Global.catAmt += 1
		Global.blueCheeseAmt += 1
	

