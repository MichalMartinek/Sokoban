accessing
level: aLevel
	| levelElement controller listener |
	levelElement := SKBLevelElement new level: aLevel deepCopy.
	controller := SKBController new.
	controller level: aLevel deepCopy .
	controller
		responseOnMove: [ levelElement draw: controller level.
			controller finishedLevel
				ifTrue: [ gameElement changePage: #LevelClearedPage ] ].
	listener := SKBEventListener withController: controller.
	gameElement removeKeyListener.
	gameElement keyListener: listener.
	self addChild: levelElement.
	self addChild: self footer