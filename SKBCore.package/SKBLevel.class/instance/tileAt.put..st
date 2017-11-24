accessing
tileAt: aPoint put: aSKBTile
	|aTile|
	aTile := map at: aPoint x + ((aPoint y - 1) * width).
	aTile type: (aSKBTile type).
	aTile entity: (aSKBTile entity)
	