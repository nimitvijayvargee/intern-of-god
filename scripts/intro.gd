extends Node2D

@onready var lbl1 = $"1/lbl1"
@onready var lbl2 = $"2/lbl2"
@onready var lbl3 = $"3/lbl3"
@onready var lbl4 = $"4/lbl4"
@onready var lbl5 = $"5/lbl5"
@onready var new_scene= "res://main.tscn"
var step := 1

func _ready():
	lbl1.visible = true
	lbl2.visible = false
	lbl3.visible = false
	lbl4.visible = false
	lbl5.visible = false


func _input(event):
	if event.is_action_pressed("ui_accept"): 
		next_step()


func next_step():
	step += 1
	
	lbl1.visible = (step == 2)
	lbl2.visible = (step == 3)
	lbl3.visible = (step == 4)
	lbl4.visible = (step == 5)
	lbl5.visible = (step == 6)

	if step == 6:
		change_level()


func change_level():
	print("CHANGE TO GAME SCENE HERE")
	get_tree().change_scene_to_file(new_scene)
