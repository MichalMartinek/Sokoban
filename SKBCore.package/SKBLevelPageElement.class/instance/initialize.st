initialization
initialize
	super initialize.
	self
		background: Color lightYellow;
		layout: BlFlowLayout new vertical alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].
	menuEventListener := SKBMenuButtonEventListener new.
	self
		addChild:
			(SKBLevelElement new
				level:
					(SKBLevel
						fromString:
							'#######
#P C S#
#######')).
self
		addChild: self footer.