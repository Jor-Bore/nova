extends CollisionPolygon2D

var verts = Vector2(7,12)
var irregularity = 30
var sizes = Vector2(50,80)


# Called when the node enters the scene tree for the first time.
func _init() -> void:
	var verts_num = randi_range(verts.x,verts.y)
	var size = randf_range(sizes.x,sizes.y)
	var shape_verts = Array()
	for i in range(verts_num):
		var vert = Vector2(0,size)
		vert = vert.rotated(i*(2*PI/verts_num))
		vert = vert +Vector2(randf_range(0,irregularity),randf_range(0,irregularity))
		shape_verts.append(vert)
	var final_shape = PackedVector2Array(shape_verts)
	set_polygon(final_shape)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
