@tool
extends "res://addons/popochiu/engine/interfaces/i_character.gd"

# classes ----
const PCSkully := preload("res://game/characters/skully/character_skully.gd")
# ---- classes

# nodes ----
var Skully: PCSkully : get = get_Skully
# ---- nodes

# functions ----
func get_Skully() -> PCSkully: return get_runtime_character("Skully")
# ---- functions

