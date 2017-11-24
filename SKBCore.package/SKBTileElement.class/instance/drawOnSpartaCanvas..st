drawing
drawOnSpartaCanvas: aCanvas
	tile type = #SKBAir
		ifTrue: [ self drawAir: aCanvas ]
		ifFalse: [ self drawWall: aCanvas ].