extends Area2D


func _ready() -> void:
	$Label.visible = false



func _on_body_entered(body: Node2D) -> void:
	if body.name == 'Player':
		$Label.visible = true
		



func _on_body_exited(body: Node2D) -> void:
	$Label.visible = false
