accessing
level: aLevel
	self layout columnCount: aLevel width.
	Transcript show: 'asd'.
	1 to: aLevel width do: [ :i | 1 to: aLevel height do: [ :j | 
			
			self addChild: (self newTileElement tile: (aLevel tileAt: i@j )) ] ]