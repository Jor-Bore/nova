extends Polygon2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_polygon(get_parent().polygon)
	set_texture_offset(Vector2(randi_range(100,500),randi_range(100,500)))
	set_texture_rotation(randf_range(-PI,PI))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
