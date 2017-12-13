accessing
tileAt: aPoint put: aSKBTile
	| aTile |
	aTile := (map at: aPoint x) at: aPoint y.
	aTile type: aSKBTile type.
	aTile entity: aSKBTile entity