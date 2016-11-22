extends Control

export (Texture) var Blank
export (Texture) var Filled

var filled = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
	

func _on_Tile_input_event( ev ):
	print("_on_Tile_mouse_click")
	if(ev.type==InputEvent.MOUSE_BUTTON and ev.pressed):
		if (ev.button_index==BUTTON_LEFT):
			if(filled):
				get_node("Sprite").set_texture(Blank)
				filled = false
			else:
				get_node("Sprite").set_texture(Filled)
				filled = true



func _on_Tile_mouse_enter():
	print("_on_Tile_mouse_enter")
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		if(filled):
			get_node("Sprite").set_texture(Blank)
			filled = false
		else:
			get_node("Sprite").set_texture(Filled)
			filled = true



