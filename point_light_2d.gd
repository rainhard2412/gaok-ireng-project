extends PointLight2D

# @export var base_energy := 1.2
#@export var flicker_amount := 0.15
#@export var flicker_speed := 8.0

#func _process(delta):
	#energy = base_energy + sin(Time.get_ticks_msec() * 0.001 * flicker_speed) * flicker_amount \
		#+ randf_range(-0.03, 0.03)
