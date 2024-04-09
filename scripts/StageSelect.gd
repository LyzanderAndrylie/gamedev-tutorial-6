extends LinkButton

var select_stage_scene = preload('res://scenes/SelectStage.tscn')

func _on_StageSelect_pressed():
	get_tree().change_scene_to(select_stage_scene)
