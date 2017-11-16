accessing
tileAt: aPoint
	^ map at: aPoint x + (aPoint y * width)