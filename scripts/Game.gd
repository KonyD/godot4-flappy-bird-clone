extends Node2D

var walls = preload("res://scenes/Walls.tscn")
var death_text = preload("res://scenes/DeathScreen.tscn")

var score = 0

func _on_timer_timeout():
	var instance = walls.instantiate()
	add_child(instance)


func _on_detect_area_entered(area):
	if area.name == "PointArea":
		score += 1
		$CanvasLayer/ScoreLabel.text = "score: " + str(score)
	if area.name == "UpperWallColl" or area.name == "LowerWallColl":
		$Player.queue_free()
		var instance = death_text.instantiate()
		add_child(instance)
