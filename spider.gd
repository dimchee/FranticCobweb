extends Sprite2D

var Net
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.Net = get_node("/root/Main/Net")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var vp = get_viewport()
	if Input.is_action_pressed("Fire"):
		Net.threads.append(Net.Nit.new(self.position, vp.get_mouse_position() - vp.get_visible_rect().size / 2))
		Net.queue_redraw()
