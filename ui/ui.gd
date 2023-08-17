extends Control

var DialogBox: Node:
	get:
		return $DialogBox

var PauseMenu: Node:
	get:
		return $PauseMenu

func _ready():
	Global.UI = self

func _enter_tree():
	Global.UI = self

func _process(delta):
	var window_size = get_window().size
	var scale_w = max(1, floor(window_size.x as float / ProjectSettings.get("display/window/size/viewport_width")) as int)
	var scale_h = max(1, floor(window_size.y as float / ProjectSettings.get("display/window/size/viewport_height")) as int)
	if scale_w > scale_h:
		scale_h += 1
	var ui_scale = min(scale_w, scale_h)
	if get_tree().root.content_scale_factor != ui_scale:
		get_tree().root.content_scale_factor = ui_scale
