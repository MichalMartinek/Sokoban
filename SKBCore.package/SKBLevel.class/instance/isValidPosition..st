testing
isValidPosition: aPoint
	| x y |
	x := aPoint x.
	y := aPoint y.
	^ (x >= 1 and: x <= width) and: (y >= 1 and: y <= height)