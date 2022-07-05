extends Button
enum button_t {UpgradeAuto, UpgradeClick}
export (button_t) var type = button_t.UpgradeAuto
export var cost = 0
export var effect = 0
signal Pokupka (button)

func _on_button_pressed():
	emit_signal('Pokupka', self)
