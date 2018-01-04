initialization
withWidth: aWidth andHeight: aHeight
	| newLevel |
	newLevel := SKBLevel new.
	newLevel width: aWidth andHeight: aHeight.
	^ newLevel