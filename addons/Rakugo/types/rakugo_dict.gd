extends RakugoVar
"""
This object used to handling Rakugo's
 variables that are dictionaries
"""
class_name RakugoDict

signal value_changed(var_name, new_value)
signal key_value_changed(var_name, key, new_value)

func _init(var_name:String, var_value:Dictionary
	).(var_name, var_value, Rakugo.Type.DICT) -> void:
	pass

func _set_value(dict:Dictionary) -> void:
	._set_value(dict)

func _get_value() -> Dictionary:
	return _value

func set_key_value(key, key_value) -> void: 
	value[key] = key_value
	emit_signal("key_value_changed", name, key, key_value)

func get_key_value(key):	
	return value.get(key)

func clear():
	value.clear()
	
func empty():
	value.empty()
	
func erase(key) -> bool:
	return value.erase(key)
	
func has(key) -> bool:
	return value.has(key)
	
func has_all(keys:Array) -> bool:
	return value.has_all(keys)
	
func keys() -> Array:
	return value.keys()
	
func size() -> int:
	return value.size()
	
func values() -> Array:
	return value.values()
