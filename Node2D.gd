extends Node2D

func on_Score_Changed():
	var scene = preload('res://Giga_Chad.tscn')
	var child = scene.instance() 
	self.add_child(child)
