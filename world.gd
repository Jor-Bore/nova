extends Node2D

@export_group("Scenes")
@export var playerscene: PackedScene
@export var projectilescene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(playerscene.instantiate())
	var player = get_node("CharacterBody2D")
	player.shoot.connect(_on_player_shoot)

func _on_player_shoot():
	add_child(projectilescene.instantiate())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
