as yet unclassified
startWithRoom: aRoomElement
	| space view |
	space := BlSpace new
		title: 'Sokoban';
		extent: 300 @ 300;
		show.
		
	view := SKBView new.
	view window: space.
	view room: aRoomElement.
	
	^view.
	
	
	