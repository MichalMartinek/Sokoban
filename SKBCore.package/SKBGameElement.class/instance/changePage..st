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
		ifTrue: [ |page| 
			page := SKBLevelPageElement new.
			page gameElement: self.
			page level: self currentLevel.
			self addChild: page ].
	aPage = #WelcomePage
		ifTrue: [ self addChild: (SKBWelcomePageElement new gameElement: self) ].
	aPage = #LevelClearedPage
		ifTrue: [ self addChild: (SKBLevelClearedPageElement new gameElement: self) ].
	aPage = #ChooseLevelPage
		ifTrue: [ self addChild: (SKBChooseLevelPageElement new gameElement: self) ]