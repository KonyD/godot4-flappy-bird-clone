extends CanvasLayer

func _process(delta):
	if Input.is_action_just_pressed("FLAP"):
		get_tree().reload_current_scene()
