keyboard handlers
keyDownEvent: aEvent
	aEvent key = Key arrowLeft
	ifTrue: [ controller move: SKBDirection left. ^self ].
	aEvent key = Key arrowRight 
	ifTrue: [ controller move: SKBDirection right. ^self ].
	aEvent key = Key arrowUp
	ifTrue: [ controller move: SKBDirection up. ^self ].
	aEvent key = Key arrowDown
	ifTrue: [ controller move: SKBDirection down. ^self ].