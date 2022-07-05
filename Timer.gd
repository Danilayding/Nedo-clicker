extends Timer

func _ready():
	randomize()
	var child = self.get_child(randi()%3) 
	child.emitting = true
