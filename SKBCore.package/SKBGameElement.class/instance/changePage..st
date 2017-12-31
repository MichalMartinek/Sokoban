as yet unclassified
changePage: aPage
	self removeChildren.
	aPage = #MenuPage
		ifTrue: [ self
				addChild:
					(SKBMenuPageElement new
						quitEventListener: eventLstnr;
						gameElement: self) ].
	aPage = #LevelPage
		ifTrue: [ self addChild: (SKBLevelPageElement new gameElement: self) ].
	aPage = #WelcomePage
		ifTrue: [ self addChild: (SKBWelcomePageElement new gameElement: self) ].
	aPage = #ChooseLevelPage
		ifTrue: [ self addChild: (SKBChooseLevelPageElement new gameElement: self) ]