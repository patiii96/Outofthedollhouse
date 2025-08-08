@tool
extends "res://addons/popochiu/engine/interfaces/i_inventory.gd"

# classes ----
const PIIHammer := preload("res://game/inventory_items/hammer/inventory_item_hammer.gd")
const PIIZeiger := preload("res://game/inventory_items/zeiger/inventory_item_zeiger.gd")
# ---- classes

# nodes ----
var Hammer: PIIHammer : get = get_Hammer
var Zeiger: PIIZeiger : get = get_Zeiger
# ---- nodes

# functions ----
func get_Hammer() -> PIIHammer: return get_item_instance("Hammer")
func get_Zeiger() -> PIIZeiger: return get_item_instance("Zeiger")
# ---- functions

