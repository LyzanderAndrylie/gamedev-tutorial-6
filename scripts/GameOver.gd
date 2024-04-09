extends ColorRect

export(PackedScene) var main_menu_scene = preload('res://scenes/MainMenu.tscn')

func _on_BackToMainMenu_pressed():
	get_tree().change_scene_to(main_menu_scene)

func _on_ExitGame_pressed():
	get_tree().quit()
