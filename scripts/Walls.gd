extends Node2D



func _ready():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	position = Vector2(1174, rng.randi_range(200, 400))

func _physics_process(delta):
	position += Vector2(-2, 0)

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
