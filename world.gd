extends Node2D

@export_group("Scenes")
@export var playerscene: PackedScene
@export var projectilescene: PackedScene
@export var asteroidscene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(playerscene.instantiate())
	var player = get_node("Player")
	player.shoot.connect(_on_player_shoot)

func _on_player_shoot():
	add_child(projectilescene.instantiate())
	get_node("Projectile").body_entered.connect(_on_projectile_body_entered)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_asteroid_timer_timeout() -> void:
	var asteroid = asteroidscene.instantiate()
	var spawn = $"Asteroid Path/Asteroid Spawn"
	spawn.progress_ratio = randf()
	var direction = spawn.rotation+PI/2
	asteroid.position = spawn.position
	direction += randf_range(-PI/4, PI/4)
	asteroid.rotation = direction
	var velocity = Vector2(randf_range(150.0,250.0),0.0)
	var angular_velocity = randf_range(-PI,PI)
	asteroid.linear_velocity = velocity.rotated(direction)
	asteroid.angular_velocity = angular_velocity
	add_child(asteroid)

func _on_projectile_body_entered(body):
	body.queue_free()
