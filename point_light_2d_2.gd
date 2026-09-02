extends PointLight2D

@export var base_energy := 1.2
@export var flicker_min := 0.9
@export var flicker_max := 1.1
@export var min_interval := 0.08
@export var max_interval := 0.12

var _timer := 0.0
var _next_change := 0.0

func _ready():
	_next_change = randf_range(min_interval, max_interval)

func _process(delta):
	_timer += delta
	if _timer >= _next_change:
		_timer = 0.0
		_next_change = randf_range(min_interval, max_interval)
		energy = randf_range(flicker_min, flicker_max)
