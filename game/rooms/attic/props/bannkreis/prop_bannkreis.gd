@tool
extends PopochiuProp
# You can use E.queue([]) to trigger a sequence of events.
# Use await E.queue([]) if you want to pause the excecution of
# the function until the sequence of events finishes.


#region Virtual ####################################################################################
# When the node is clicked
func _on_click() -> void:
	# Replace the call to E.command_fallback() to implement your code.
	# E.command_fallback()
	# For example, you can make the player character walk to this prop, gaze at it, and then say
	# something:
	await C.player.walk_to_clicked()
	await C.player.face_clicked()
	
	var all_lit = true
	for kerze in get_tree().get_nodes_in_group("Kerzen"):
		if not kerze.isLit:
			all_lit = false
			await C.player.walk_to_clicked()
			await C.player.face_clicked()
			await C.player.say("It is getting nice and cosy in here!")
			break
	if all_lit:
		await C.player.say("Woohoo! What is happening here? Finally I have found my way out of the attic!.")
		R.get_prop("Luke").texture = R.get_prop("Luke").LukeOffen
		R.get_prop("Luke").open = true


func _on_double_click() -> void:
	# Replace the call to E.command_fallback() with your code.
	E.command_fallback()
	# For example, you could make the player instantly do something instead of walking there first


# When the node is right clicked
func _on_right_click() -> void:
	# Replace the call to E.command_fallback() to implement your code.
	# E.command_fallback()
	# For example, you can make the player character gaze at this prop and then say something:
	await C.player.face_clicked()
	await C.player.say("Huh what a funny sketch.")


# When the node is middle clicked
func _on_middle_click() -> void:
	# Replace the call to E.command_fallback() to implement your code.
	E.command_fallback()


# When the node is clicked and there is an inventory item selected
func _on_item_used(_item: PopochiuInventoryItem) -> void:
	# Replace the call to E.command_fallback() to implement your code.
	#E.command_fallback()
	# For example, you can make the player character say something when the Key item is used in this
	# prop. Note that you have to change the name of the `_item` parameter to `item`.
	if _item == I.Doll:
		await C.player.walk_to_clicked()
		await C.player.face_clicked()
		await C.player.say("Creating something like this always been on my 'voodoo list', hahahaha!")
		R.get_prop("DollPentagram").show()
		I.Doll.remove()
		


# When an inventory item linked to this Prop (link_to_item) is removed from
# the inventory (i.e. when it is used in something that makes use of the object).
func _on_linked_item_removed() -> void:
	pass


# When an inventory item linked to this Prop (link_to_item) is discarded from
# the inventory (i.e. when the player throws the object out of the inventory).
func _on_linked_item_discarded() -> void:
	pass


#endregion

#region Public #####################################################################################
# You can add here functions triggered by the GUI commands. For example, if your GUI has a command
# for look_at, you could have the function:
#func on_look_at() -> void:
	#pass


#endregion
