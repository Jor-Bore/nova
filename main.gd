extends Node

signal begin
@export var World: PackedScene



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("World").queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_world_real_game_over() -> void:
	get_node("World").queue_free()
	get_node("GUI/Button").show()


func _on_button_pressed() -> void:
	begin.emit()
	get_node("GUI/Button").hide()
	add_child(World.instantiate(), true)
	get_node("World").real_game_over.connect(_on_world_real_game_over)
	
	
