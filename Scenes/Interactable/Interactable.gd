extends KinematicBody2D

const PATH_DIALOG_BOX_SCENE = "res://Scenes/Interface/DialogBox.tscn"

# Some interactables display a dialog box when interacted with (NPCs, etc.)
var _dialog_box_instance

# TODO: this should be common to a parent class
var _manager
var _root

func _ready():
	_root = get_node("/root")
	_manager = get_node("/root/Manager")
	_dialog_box_instance = load(PATH_DIALOG_BOX_SCENE).instance()

func interact():
	push_error("Virtual method interact was called")