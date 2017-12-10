initialization
fromChar: aChar andPosition: aPoint
	| tile |
	aChar = $ 
		ifTrue: [ tile := SKBTile withType: #SKBAir withEntity: nil withPosition: aPoint ].
	aChar = $#
		ifTrue: [ tile := SKBTile withType: #SKBWall withEntity: nil withPosition: aPoint ].
	aChar = $P
		ifTrue: [ tile := SKBTile withType: #SKBAir withEntity: #SKBPlayer withPosition: aPoint ].
	aChar = $C
		ifTrue: [ tile := SKBTile withType: #SKBAir withEntity: #SKBCrate withPosition: aPoint ].
	aChar = $S
		ifTrue: [ tile := SKBTile withType: #SKBCrateSlot withEntity: nil withPosition: aPoint ].		
	^ tile