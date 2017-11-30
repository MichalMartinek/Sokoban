controll
vector: aDirection
	| vector |
	aDirection = #SKBLeft
		ifTrue: [ vector := -1 @ 0 ]
		ifFalse: [ aDirection = #SKBRight
				ifTrue: [ vector := 1 @ 0 ]
				ifFalse: [ aDirection = #SKBUp
						ifTrue: [ vector := 0 @ -1 ]
						ifFalse: [ aDirection = #SKBDown
								ifTrue: [ vector := 0 @ 1 ] ] ] ].
	^ vector