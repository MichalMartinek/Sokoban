accessing
tileAt: aPoint put: aSKBTile
	| tile |
	tile := (map at: aPoint x) at: aPoint y.
	aSKBTile
		position: tile position;
		entity: aSKBTile entity.
	(map at: aPoint x) at: aPoint y put: aSKBTile