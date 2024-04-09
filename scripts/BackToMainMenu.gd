extends LinkButton

export(PackedScene) var main_menu_scene = preload('res://scenes/MainMenu.tscn')

func _on_BackToMainMenu_pressed():
	get_tree().change_scene_to(main_menu_scene)
