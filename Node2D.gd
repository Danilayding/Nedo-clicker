extends Node2D

func _on_Button_pressed():
	$Timer.start()
	
func _on_Timer_timeout():
	print('чмо ебаное блять сука нахуй')
