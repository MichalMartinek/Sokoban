actions
up
	^ upDirection ifNil: [ upDirection := SKBDirection withVector: 0 @ -1 ]