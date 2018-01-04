initialization
fromChar: aChar andPosition: aPoint
	| tile |
	aChar = $ 
		ifTrue: [ tile := SKBAirTile withEntity: nil withPosition: aPoint ].
	aChar = $#
		ifTrue: [ tile := SKBWallTile withEntity: nil withPosition: aPoint ].
	aChar = $P
		ifTrue: [ tile := SKBAirTile withEntity: #SKBPlayer withPosition: aPoint ].
	aChar = $C
		ifTrue: [ tile := SKBAirTile withEntity: #SKBCrate withPosition: aPoint ].
	aChar = $S
		ifTrue: [ tile := SKBCrateSlotTile withEntity: nil withPosition: aPoint ].		
	^ tile