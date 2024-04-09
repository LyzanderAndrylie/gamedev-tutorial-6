# Tutorial 6 - Game Development 2023/2024

> Godot Version: 3.5.3

## Tombol pada layar game over untuk kembali ke menu utama

Untuk menambahkan tombol pada layar *game over*, saya menyesuaikan struktur dan layout dari layar *game over* dengan menggunakan *container* yang sesuai, seperti `MarginContainer`, `VBoxContainer`, dan `HBoxContainer,` agar tombol dapat diletakkan di posisi yang diinginkan dan lebih rapih. Kemudian, saya menambahkan 2 tombol, yaitu tombol untuk kembali ke menu utama (node `BackToMainMenu`) dan tombol untuk keluar dari permainan (node `ExitGame`). Berikut adalah tampilan dari layar *game over*.

![Layar Game Over](./screenshot/layer_game_over.png)

Setelah itu, saya menambahkan script ke `LinkButton` yang sesuai agar tombol `BackToMainMenu` mengarahkan pemain ke layar menu utama ketika ditekan dan tombol `ExitGame` mengeluarkan pemain dari permainan. Berikut adalah implementasi script untuk masing-masing `LinkButton`.

`BackToMainMenu.gd`

```py
extends LinkButton

export(PackedScene) var main_menu_scene = preload('res://scenes/MainMenu.tscn')

func _on_BackToMainMenu_pressed():
    get_tree().change_scene_to(main_menu_scene)
```

`ExitGame.gd`

```py
extends LinkButton

func _on_ExitGame_pressed():
    get_tree().quit()
```

## Fitur Select Stage

Hal ini dapat dilakukan dengan membuat menu `SelectStage.tscn` terlebih dahulu. Pada menu ini, pemain dapat memilih level yang ingin dimainkan. Tampilan menu `SelectStage.tscn` adalah sebagai berikut.

![Select Stage Menu](./screenshot/menu_select_stage.png)

Pada menu ini, saya membuat scene baru, yaitu scene `LevelLinkButton` yang dapat mengarahkan pemain ke scene level tertentu sesuai dengan konfigurasi. Hal ini diperlukan untuk mendukung *reusability*. Berikut adalah implementasinya.

`LevelLinkButton.gd`

```py
extends LinkButton

export(PackedScene) var level_scene

func _on_LevelLinkButton_pressed():
    get_tree().change_scene_to(level_scene)
```

Kemudian, saya tinggal menghubungkan `LinkButton` Stage Select pada `MainMenu.tscn` ke scene di atas yang telah saya buat. Berikut adalah implementasi scriptnya.

```py
extends LinkButton

var select_stage_scene = preload('res://scenes/SelectStage.tscn')

func _on_StageSelect_pressed():
    get_tree().change_scene_to(select_stage_scene)
```

Hasil dapat dilihat di [`./screenshot/select_stage.mp4`](./screenshot/select_stage.mp4)

## Sumber Referensi

1. [Scene Tree](https://media.giphy.com/media/vFKqnCdLPNOKc/giphy.gif)
