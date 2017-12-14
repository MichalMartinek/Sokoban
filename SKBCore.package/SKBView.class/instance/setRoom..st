acessing
setRoom: anElement
	window root removeChildren.
	window root addChild: anElement.
	room := anElement.