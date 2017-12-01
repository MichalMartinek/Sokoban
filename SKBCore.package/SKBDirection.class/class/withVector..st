as yet unclassified
withVector: aPoint
	| dir |
	dir := SKBDirection new.
	dir vector: aPoint.
	^dir
	