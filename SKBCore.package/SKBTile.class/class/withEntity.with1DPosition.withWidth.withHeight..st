instance creation
withEntity: anEntity with1DPosition: aPosition withWidth: aWidth withHeight: aHeight
	| tile x y |
	tile := self new.
	tile entity: anEntity.
	x := (aPosition - 1) % aWidth + 1.
	y := ((aPosition - 1) / aWidth + 1)asInteger.
	tile position: x @ y.
	^ tile