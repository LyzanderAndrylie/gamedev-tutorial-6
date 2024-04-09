extends MarginContainer

export(PackedScene) var level_scene = preload('res://scenes/Level 1.tscn')
export(PackedScene) var select_stage_scene = preload('res://scenes/SelectStage.tscn')
onready var animatedSprite = $HBoxContainer/CenterContainer/Character

func _ready():
	animatedSprite.play("default")

func _on_NewGame_pressed():
	global.reset_player_lives()
	get_tree().change_scene_to(level_scene)

func _on_StageSelect_pressed():
	global.reset_player_lives()
	get_tree().change_scene_to(select_stage_scene)
