@tool
extends "res://addons/popochiu/engine/interfaces/i_room.gd"

# classes ----
const PRAttic := preload("res://game/rooms/attic/room_attic.gd")
# ---- classes

# nodes ----
var Attic: PRAttic : get = get_Attic
# ---- nodes

# functions ----
func get_Attic() -> PRAttic: return get_runtime_room("Attic")
# ---- functions

