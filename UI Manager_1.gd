extends CanvasLayer

var timerinsec : int = 0
@onready var timecount = $Panelvictory_1/Time/Timecount
@onready var timer = $Timer

# Called when the node enters the scene tree for the first time.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	$Timer2.start()

func _on_timer_timeout():
	timerinsec += 1
	var m = int(timerinsec/60.0)
	var s = timerinsec - m * 60
	timer.text = '%02d:%02d' % [m, s]
	timecount.text = '%02d:%02d' % [m, s]
