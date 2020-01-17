extends VBoxContainer

func set_wad_list(wad_list: PoolStringArray) -> void:
	for child in get_children():
		remove_child(child)
		child.queue_free()

	for wad in wad_list:
		var label = Label.new()
		label.text = wad
		add_child(label)
