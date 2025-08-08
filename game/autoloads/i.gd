@tool
extends "res://addons/popochiu/engine/interfaces/i_inventory.gd"

# classes ----
const PIIHammer := preload("res://game/inventory_items/hammer/inventory_item_hammer.gd")
const PIIZeiger := preload("res://game/inventory_items/zeiger/inventory_item_zeiger.gd")
const PIIDoll := preload("res://game/inventory_items/doll/inventory_item_doll.gd")
# ---- classes

# nodes ----
var Hammer: PIIHammer : get = get_Hammer
var Zeiger: PIIZeiger : get = get_Zeiger
var Doll: PIIDoll : get = get_Doll
# ---- nodes

# functions ----
func get_Hammer() -> PIIHammer: return get_item_instance("Hammer")
func get_Zeiger() -> PIIZeiger: return get_item_instance("Zeiger")
func get_Doll() -> PIIDoll: return get_item_instance("Doll")
# ---- functions

