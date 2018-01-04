accessing
level: aLevel
	self layout columnCount: aLevel width.
	Transcript show: 'asd'.
	1 to: aLevel height do: [ :i | 1 to: aLevel width do: [ :j | self addChild: (aLevel tileAt: j @ i) uiElement ] ]