extends Area2D


@export var SPEED = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rotation = get_node("/root/Main/World/CharacterBody2D").rotation 
	position = get_node("/root/Main/World/CharacterBody2D").position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position += Vector2(1,0).rotated(rotation)*SPEED
