extends Camera2D

var zoom_speed := 0.1
var min_zoom := 0.5
var max_zoom := 3.0

var is_panning := false

func _input(event):

	if event.is_action_pressed("zoom-in"):
		zoom -= Vector2(zoom_speed, zoom_speed)

	if event.is_action_pressed("zoom-out"):
		zoom += Vector2(zoom_speed, zoom_speed)

	zoom.x = clamp(zoom.x, min_zoom, max_zoom)
	zoom.y = clamp(zoom.y, min_zoom, max_zoom)


	if event.is_action_pressed("pan"):
		is_panning = true
		
	if event.is_action_released("pan"):
		is_panning = false

	if event is InputEventMouseMotion and is_panning:
		position -= event.relative * zoom
