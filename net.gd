extends Node2D

var speed = 1

class Nit:
	var start: Vector2 
	var end: Vector2
	var progress: float
	func _init(start: Vector2, end: Vector2, progress: float = 0.0) -> void:
		self.start = start
		self.end = end
		self.progress = progress

var threads = [ 
	Nit.new(Vector2(-300, 300), Vector2(300, 300), 1.0), 
	Nit.new(Vector2(0, 0), Vector2(-300, 300), 1.0) 
]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _draw() -> void:
	for t in threads:
		draw_line(t.start, lerp(t.start, t.end, t.progress), Color.WHITE, 2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for t in threads:
		if t.progress + delta*0.1 < 1.0:
			t.progress = t.progress + delta*speed
			self.queue_redraw()
