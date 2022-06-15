extends Node
var Score = 0 #Переменная счёта
var PerSec = 0 #Переменная увеличение счёта автоматически
var PerClick = 1 #Переменная кол-ва очков за 1 клик
var PrAu1 = 50
var PrAu2 = 100
var PrAu3 = 300
var PrAu4 = 500
var PrAu5 = 5000
var PrCl1 = 10
var PrCl2 = 50
var PrCl3 = 100
var PrCl4 = 300
var PrCl5 = 1000

func _ready():
	$HUI.play()
	$Timer.start()

func _process(_delta):
	$Score.text = str(Score) #Обновление счёта(постоянно)
	$PerClick.text = 'Клик = ' + str(PerClick)
	$PerSec.text = 'Пассивно = ' + str(PerSec)
	

func _on_MainBut_pressed():
	Score = Score + PerClick #Увеличиваешь счёт если нажимаешь на кнопку 

func _on_UpgradeAuto1_pressed():
	if Score >= PrAu1:
		PerSec += 1
		Score -= PrAu1
		PrAu1 += PrAu1
		$MarketAuto/UpgradeAuto1.text = 'Пассивный доход + 1 = ' + str(PrAu1)

func _on_UpgradeAuto2_pressed():
	if Score >= PrAu2:
		PerSec += 10
		Score -= PrAu2
		PrAu2 += PrAu2
		$MarketAuto/UpgradeAuto2.text = 'Пассивный доход + 10 = ' + str(PrAu2)

func _on_UpgradeAuto3_pressed():
	if Score >= PrAu3:
		PerSec += 25
		Score -= PrAu3
		PrAu3 += PrAu3
		$MarketAuto/UpgradeAuto3.text = 'Пассивный доход + 25 = ' + str(PrAu3)

func _on_UpgradeAuto4_pressed():
	if Score >= PrAu4:
		PerSec += 100
		Score -= PrAu4
		PrAu4 += PrAu4
		$MarketAuto/UpgradeAuto4.text = 'Пассивный доход + 100 = ' + str(PrAu4)

func _on_UpgradeAuto5_pressed():
	if Score >= PrAu5:
		PerSec += 500
		Score -= PrAu5
		PrAu5 += PrAu5
		$MarketAuto/UpgradeAuto5.text = 'Пассивный доход + 500 = ' + str(PrAu5)

func _on_UpgradeClick1_pressed():
	if Score >= PrCl1:
		PerClick += 1
		Score -= PrCl1
		PrCl1 += PrCl1
		$MarketClick/UpgradeClick1.text = 'Бонус от клика + 1 = ' + str(PrCl1)

func _on_UpgradeClick2_pressed():
	if Score >= PrCl2:
		PerClick += 10
		Score -= PrCl2
		PrCl2 += PrCl2
		$MarketClick/UpgradeClick2.text = 'Бонус от клика + 10 = ' + str(PrCl2)

func _on_UpgradeClick3_pressed():
	if Score >= PrCl3:
		PerClick += 25
		Score -= PrCl3
		PrCl3 += PrCl3
		$MarketClick/UpgradeClick3.text = 'Бонус от клика + 25 = ' + str(PrCl3)

func _on_UpgradeClick4_pressed():
	if Score >= PrCl4:
		PerClick += 100
		Score -= PrCl4
		PrCl4 += PrCl4
		$MarketClick/UpgradeClick4.text = 'Бонус от клика + 100 = ' + str(PrCl4)

func _on_UpgradeClick5_pressed():
	if Score >= PrCl5:
		PerClick += 500
		Score -= PrCl5
		PrCl5 += PrCl5
		$MarketClick/UpgradeClick5.text = 'Бонус от клика + 500 = ' + str(PrCl5)

func _on_Timer_timeout():
	Score += PerSec
