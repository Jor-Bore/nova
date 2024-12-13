extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("Button").show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_world_real_game_over() -> void:
	get_node("Button").show()
