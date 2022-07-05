extends Node
var Score = 0 #Переменная счёта
var PerSec = 0 #Переменная увеличение счёта автоматически
var PerClick = 1 #Переменная кол-ва очков за 1 клик
signal Score_Changed
enum button_t {UpgradeAuto, UpgradeClick}
func _ready():
	$HUI.play()
	$Timer.start()

func _process(_delta):
	$Score.text = str(Score) #Обновление счёта(постоянно)
	$PerClick.text = 'Клик = ' + str(PerClick)
	$PerSec.text = 'Пассивно = ' + str(PerSec)
	

func _on_MainBut_pressed():
	Score = Score + PerClick #Увеличиваешь счёт если нажимаешь на кнопку
	emit_signal('Score_Changed')

func on_Pokupka(button):
	if Score >= button.cost:
		Score -= button.cost
		button.cost += button.cost
		if button.type == button_t.UpgradeAuto:
			PerSec += button.effect
			button.text = 'Пассивный доход + ' + str(button.effect) + ' = ' + str(button.cost)
		else :
			PerClick += button.effect 
			button.text = 'Бонус от клика + ' + str(button.effect) + ' = '  + str(button.cost)

func _on_Timer_timeout():
	Score += PerSec
	if PerSec != 0:
		emit_signal('Score_Changed')
	
