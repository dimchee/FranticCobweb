extends Node2D

class Nit:
	var start: Vector2 
	var end: Vector2
	func _init(start: Vector2, end: Vector2) -> void:
		self.start = start
		self.end = end
		

var netholder = [ Nit.new(Vector2(-300, 300), Vector2(300, 300))
				, Nit.new(Vector2(0, 0), Vector2(-300, 300)) 
				]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _draw() -> void:
	for t in netholder:
		draw_line(t.start, t.end, Color.WHITE, 2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
