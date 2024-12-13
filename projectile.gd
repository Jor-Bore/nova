extends Area2D


@export var SPEED = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rotation = get_node("/root/Main/World/Player").rotation 
	position = get_node("/root/Main/World/Player").position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position += Vector2(1,0).rotated(rotation)*SPEED


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()


func _on_body_entered(body: Node2D) -> void:
	queue_free()
