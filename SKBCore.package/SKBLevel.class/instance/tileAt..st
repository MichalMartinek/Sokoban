accessing
tileAt: aPoint
	^ map at: aPoint x + ((aPoint y - 1) * width)