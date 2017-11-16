accessing
tileAt: aPoint put: aSKBTile 
	map at: (aPoint x + (aPoint y * width)) put: aSKBTile 