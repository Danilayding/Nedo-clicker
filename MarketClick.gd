extends ColorRect

func _on_MarketClick_mouse_entered():
	$Tween.stop(self)
	var x = (self.rect_position.x - 609) / 331
	$Tween.interpolate_property(self,'rect_position', null, Vector2(609, 0), x, Tween.TRANS_LINEAR)
	$Tween.start()


func _on_MarketClick_mouse_exited():
	$Tween.stop(self)
	var x = abs(self.rect_position.x - 940) / 331
	$Tween.interpolate_property(self,'rect_position', null, Vector2(940, 0), x, Tween.TRANS_LINEAR)
	$Tween.start()
