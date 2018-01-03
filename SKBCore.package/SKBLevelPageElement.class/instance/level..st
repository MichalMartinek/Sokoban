accessing
level: aLevel
	| levelElement controller listener |
	levelElement := SKBLevelElement new level: aLevel.
	levelElement level: aLevel.
	controller := SKBController new.
	controller level: aLevel.
	controller responseOnMove: [ 
		levelElement draw: controller level.
		controller finishedLevel ifTrue: [ gameElement changePage: #LevelClearedPage ].
		].
	listener := SKBEventListener withController: controller.
	self gameElement window root addEventHandler: listener.
	self addChild: levelElement.
	self addChild: self footer