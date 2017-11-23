accessing
tileAt: aPoint put: aSKBTile
	map at: aPoint x + ((aPoint y - 1) * width) put: aSKBTile