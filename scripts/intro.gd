extends Node2D

@onready var lbl1 = $"1/lbl1"
@onready var lbl2 = $"2/lbl2"
@onready var lbl3 = $"3/lbl3"
@onready var lbl4 = $"4/lbl4"
@onready var lbl5 = $"5/lbl5"

var new_scene = "res://main.tscn"
var step := 1


func _ready():
	show_step()


func _input(event):
	if event is InputEventKey and event.pressed and not event.echo:
		if event.is_action_pressed("ui_accept"):
			next_step()


func next_step():
	step += 1
	
	if step > 5:
		change_level()
		return
		
	show_step()


func show_step():
	lbl1.visible = (step == 1)
	lbl2.visible = (step == 2)
	lbl3.visible = (step == 3)
	lbl4.visible = (step == 4)
	lbl5.visible = (step == 5)


func change_level():
	get_tree().change_scene_to_file(new_scene)
