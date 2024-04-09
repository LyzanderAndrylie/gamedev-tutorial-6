extends LinkButton

export(PackedScene) var level_scene

func _on_LevelLinkButton_pressed():
	get_tree().change_scene_to(level_scene)
